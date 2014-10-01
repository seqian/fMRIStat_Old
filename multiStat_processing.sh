outputBase=$2

for i in $(seq 1 "$1"); do
source /opt/minc/init.sh
qsub -j y -o "${outputBase}"/logs/multistat_"$i".log -V -cwd -q fast.q -N mSt_"$i" << EOF
#!/bin/sh
source /opt/minc/init.sh
touch "${outputBase}"/logs/multistat_"$i".started
/opt/matlab12b/bin/matlab -nodisplay << script

    load('${outputBase}/logs/multiStat_workspace.mat');
    name = fieldnames(files_in);
    % name = name{1};
    % if ~isfield(opt,'outputBase'); opt.outputBase = pwd; end
    name = name{${i}};
    files_in.(name).outputBase = [opt.outputBase '/' name];

	addpath('/home/wang/Documents/bin/fMRIStat/');
	multistatProcessing(files_in.(name),opt);

    exit
script
rm "${outputBase}"/logs/multistat_"$i".started

EOF
done
