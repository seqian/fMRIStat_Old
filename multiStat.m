function multiStat(files_in,opt)

% Check if opt provided
if isempty(opt) || isempty(files_in); error('Need files_in and opt argument'); end

%% Create output directory
if ~isfield(opt,'outputBase'); opt.outputBase = pwd; end
mkdir([opt.outputBase '/logs']);

save([opt.outputBase '/logs/multiStat_workspace.mat']);
command = ['/home/wang/Documents/bin/fMRIStat/multiStat_processing.sh ' int2str(length(fieldnames(files_in))) ' ' opt.outputBase];
display(command);
system(command);

return;
