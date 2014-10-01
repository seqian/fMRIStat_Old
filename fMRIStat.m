function fMRIStat(opt)

% Check if opt provided
if isempty(opt); error('Need opt argument'); end

%% Create once output directory
if ~strcmp(opt.type,'dangerous'); mkdir(opt.base,'fMRIStat'); end

% Enables multi and single functions
if strcmp(opt.type,'dangerous')
elseif strcmp(opt.type,'multi') % If multiple points of interest
	% Import data. csvimport, if missing, can be found here: http://www.mathworks.co.uk/matlabcentral/fileexchange/23573-csvimport
	data = csvimport(opt.csvFile,'noHeader',true);
	for i = 1:size(data,1)
		opt.name = [ data{i,1} ];
		opt.voxel = [ data{i,2}, data{i,3}, data{i,4} ]; %x,y,z, respectively
		opt.type = 'dangerous'; fMRIStat(opt); % Run script, bypass this section.
	end
	return
else % If single point of interest
	if isempty(opt.x); error('Need x seed point coordinates'); end
	if isempty(opt.y); error('Need y seed point coordinates'); end
	if isempty(opt.z); error('Need z seed point coordinates'); end
	opt.voxel = [ opt.x, opt.y, opt.z ];
end

%% Create output directory
mkdir([opt.base, '/fMRIStat'],opt.name);
b = [opt.base, '/fMRIStat/' opt.name '/'];
if exist([b '/logs/'],'dir'); rmdir([b '/logs/'],'s'); end
mkdir([b '/data/']);
mkdir([b '/logs/']);

% Generating files' list
filesList = fMRIListDir([opt.base '/preprocessing/fmri/fmri_subject*.mnc*']);
if isempty(filesList); error('No corresponding file in opt.base. Make sure that there is a preprocessing folder within opt.base'); end
a = cell(numel(filesList),2);
for i = 1:numel(filesList) % Per File
	a{i,1} = filesList{i}; %fileName
	startIndex = regexpi(a{i,1},'subject');
	endIndex = regexpi(a{i,1},'.mnc');
	a{i,2} = a{i,1}(startIndex(1):endIndex(1)-1); %subjectID.sessionID.runID
end

save([b '/logs/fmri_workspace.mat']);
command = ['/home/wang/Documents/bin/fMRIStat/fMRIStat_processing.sh -q -b ' b];
if opt.testing == 1; command = [command ' -n 1']; else command = [command ' -n ' int2str(length(a))]; end
if opt.testing == 1; display(command); else system(command); end
