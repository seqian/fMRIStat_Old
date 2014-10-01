# Processing individual fMRIStat stuff. Relies on qsub.

##### FUNCTIONS

function usage () {
	echo "Usage: $0 -n -b -q -s
-b Directory Base
-s start by scan number
-n number of scans
-q qsub
" &>2
	exit -1
}

while getopts ":b:n:s:q" opt
do
    case "$opt" in
	b) b="$OPTARG";; # For directory base
	n) n="$OPTARG";; # For number of runs
	q) q=1;; # For qsub
	s) s="$OPTARG";;
	/?) usage; exit 1;;
    esac
done

##### CHECKS
if [ ! -n "$b" ]; then echo "Need Directory Base" &>2; usage; fi
if [ ! -n "$n" ]; then echo "Need Number of Runs" &>2; usage; fi
if [ -z "$n" ] || [ -z "$b" ]; then echo "Missing arguments"; usage; fi
if [ ! -n "$s" ]; then s=1; fi

##### MAIN

for i in $(seq $s $n); do # Credit to Maxime Parent for most of the following script
[ -n "$q" ] && qsub -j y -o "$b"/logs/fmristat_$i.log -V -cwd -q long.q -N fSt_$i << EOF
#!/bin/sh
source /opt/minc/init.sh
touch "$b"/logs/fmristat_"$i".started
/opt/matlab12b/bin/matlab -nodisplay -nosplash << script
	%Add what we know so far
	load(['$b/logs/fmri_workspace.mat']);
	%Adding paths
	addpath(genpath('/opt/matlab7.5/toolbox/fmristat'));
	addpath(genpath('/opt/matlab12b/toolbox/emma'),'-end');
	system('hostname');
	input_file=[opt.base '/preprocessing/fmri/' a{$i,1}]
	output_base=[opt.base '/fMRIStat/' opt.name '/data/' a{$i,2}]
	display(opt.name);
	
	%{
	mask_thresh = fmri_mask_thresh(input_file);
	pca_image(input_file, [], 4, input_file, mask_thresh);
	%% set(gcf,'PaperOrientation','landscape');
	saveas(gcf, strcat(output_base,'_pca'), 'pdf'); % Save figure
	clf;
	%}

	% Parameters retrieval
	if ~isfield(opt,'time_frames')
	[~, opt.time_frames] = system(['source /opt/minc/init.sh; mincinfo -attvalue time:length ' input_file]); %Since NIAK scrubbing technique removes certain time frames, time_frames is variable
	opt.time_frames = str2double(opt.time_frames); end
	if ~isfield(opt,'slice_number')
	[~, opt.slice_number] = system(['source /opt/minc/init.sh; mincinfo -attvalue acquisition:num_phase_enc_steps ' input_file]); % mincinfo -attvalue acquisition:num_phase_enc_steps
	opt.slice_number = str2double(opt.slice_number); end
	if ~isfield(opt,'tr')
	[~, opt.tr] = system(['source /opt/minc/init.sh; mincinfo -attvalue time:step ' input_file]); % mincinfo -attvalue acquisition:repetition_time
	opt.tr = str2double(opt.tr); end
	
	% Voxel
	if ~strcmp(opt.voxelType,'voxel')
		voxelW = opt.voxel % Voxel dimensions
		%display(input_file);
		h=openimage(input_file);
		voxel = voxelW'; % To make worldtovoxel work
		voxel = worldtovoxel(h,voxel,'xyzorder zerobase noflip');
		voxel = round(voxel)
		closeimage(h);
	else
		voxel = opt.voxel'
	end;

	% Voxel Enlargment	
	x = voxel(1)-1:voxel(1)+1; % radius for seed 3x3x3voxels
	y = voxel(2)-1:voxel(2)+1;
	z = voxel(3)-1:voxel(3)+1;
	[x,y,z] = meshgrid(x,y,z);
	voxel = [x(:),y(:),z(:)]; % Inversed right there

	% Acquisition Correction
	frametimes=(0:opt.time_frames-1)*opt.tr; % 0:Number of timeframes - 1 * TR
	slicetimes=ones(1, opt.slice_number); % number of slices
	X_cache=fmridesign(frametimes,slicetimes);

	contrast.C=1;
	which_stats='_mag_t _mag_ef _mag_sd';
	exclude = [];
	ref_data=squeeze(extract(voxel,input_file));
	confounds = mean(ref_data);
	confounds = confounds(:);
	%confounds = [confounds,MC];
	%exclude_motion = [1 2 3];
	%[df,spatial_av]=fmrilm(input_file);
	%ref_data=squeeze(extract(voxel,input_file))./spatial_av*100;
	%ref_times=frametimes'+slicetimes(voxel(3)+3); % Initially +1, +3 to compensate for Voxel Enlargment
	%voxel = voxel'; % Else extract(voxel, input_file) doesn't work for some reason
	%confounds=fmri_interp(ref_times,ref_data,frametimes,slicetimes);
	fmrilm(input_file, output_base, X_cache, contrast, exclude, which_stats, [], [], confounds);
	exit;
script
rm "$b"/logs/fmristat_"$i".started
touch "$b"/logs/fmristat_"$i".success
EOF
done
