function multistatProcessing(files_in,opt)
% The documentation is lacking. group{1} = 1 and group{2} = 0 by default.
% files_in.inputBase = '/data/data03/wang/input/20140422_ADNI/fMRIStat/fdg10/data2/subject*_session1_multi_*.mnc';
% files_in.dataset = 'adni';
% files_in.outputBase = '/data/data03/wang/output/20140622_groupComparison/';
% files_in.effect = 'diag2';
% files_in.group{1} = '1';
% files_in.group{2} = '2';
% files_in.selection.diag2 = '1';
% files_in.covariates = {'ApoE4','FD'};
% files_in.categoricalCovariates = {'SITEID'};

% Initial Checks
if ~isa(opt.modelFile,'char'); error('modelFile is not type string. Now exiting.'); end
if ~isa(files_in.outputBase,'char'); error('outputBase not defined. Now exiting.'); end
if isa(files_in.inputBase,'char')
    seedComparison = 0;
elseif isa(files_in.inputBase,'cell');
    seedComparison = 1; files_in.group{1} = '1'; files_in.group{2} = '2';
else error('inputBase is not proper. Now exiting.');
end
% Define default groups if not defined
if isfield(files_in,'effect')
    groupComparison = 1;
    if ~isfield(files_in,'group'); error('Missing files_in.group'); end
    if ~isa(files_in.group,'cell'); error('files_in.group not a cell'); end
else groupComparison = 0;
end
if ~isfield(files_in,'longitudinal'); files_in.longitudinal = 0; end

% Import modelFile
[~,~,xls] = xlsread(opt.modelFile);

% Detect which row belongs to which using Excel headers
for i = 1:size(xls,2)
    if groupComparison && strcmpi(xls{1,i},files_in.effect); evalc(['column.effect = ' int2str(i)]); end
    if isfield(files_in,'covariates');
        for j = 1:length(files_in.covariates)
        if strcmpi(xls{1,i},files_in.covariates{j});
            evalc(['column.covariates{' int2str(j) '} = ' int2str(i)]);
            continue;
        end
        end
    end
    if isfield(files_in,'categoricalCovariates');
        for j = 1:length(files_in.categoricalCovariates)
        if strcmpi(xls{1,i},files_in.categoricalCovariates{j});
            evalc(['column.categoricalCovariates{' int2str(j) '} = ' int2str(i)]);
            continue;
        end
        end
    end
    if isfield(files_in,'selection');
        fields = fieldnames(files_in.selection);
        for j = 1:length(files_in.selection)
            if strcmpi(xls{1,i},fields{j});
                evalc(['column.selection{' int2str(j) '} = ' int2str(i)]);
                continue;
            end
        end
    end
    switch lower(xls{1,i})
        case 'dataset'; column.dataset = i;
        case 'rid'; column.rid = i;
        case 'session'; column.session = i;
        case 'qc'; column.qc = i;
    end
end
clear columnHeader;
if groupComparison && ~isfield(column,'effect'); error(['No ' files_in.effect ' column in the xls file :(']); end

% Check inputBase formatting
if isa(files_in.inputBase,'char'); files_in.inputBase = {files_in.inputBase}; end
for i = 1:size(files_in.inputBase,2)
    display(files_in.inputBase{i});
    indexes = strfind(files_in.inputBase{i},'*'); % To get indexes for *. First for databaseFolder, Second for seedPointFolder, Third for subjectID, Fourth for mapType
    if length(indexes) ~= 2; error('Please make sure that there are two asterisks in the inputBase: First for subjectID, Second for mapType.'); end
    clear indexes;
end

%if strcmpi('adni',files_in.dataset); opt.numberOfPadding = 5;
%elseif strcmpi('mcsa',files_in.dataset); opt.numberOfPadding = 4;
%end
opt.numberOfPadding = 4;
if files_in.longitudinal; opt.numberOfPadding = 5; end

% Generate file paths and subjectsIDlist. Very complex.
input = struct; existingSubjects = {};
for l = 2:size(xls,1) % Starting at 2 because ignoring header rows
    % if xls{l,column.rid} ~= 4399; continue; end % For debugging purposes
    if ~strcmpi(xls{l,column.dataset},files_in.dataset); continue; end % Ignore if not same dataset
    if ~isnan(xls{l,column.qc}); continue; end; % Ignore if comment in qc
    if groupComparison; if ~strcmpi(num2str(xls{l,column.effect}), files_in.group{1}) && ~strcmpi(num2str(xls{l,column.effect}), files_in.group{2}); continue; end; end % Ignore if not equal to any contrast
    ignore = 0;
    if isfield(files_in,'selection') % Uses selection to filter out unwanted subjects
        fields = fieldnames(files_in.selection);
        for i = 1:length(files_in.selection)
            if ~strcmpi(int2str(xls{l,column.selection{i}}), files_in.selection.(fields{i})); ignore = 1; break; end
        end
    end
    if ignore; continue; end
    padding = ['%0' int2str(opt.numberOfPadding) 's'];
    rid = num2str(xls{l,column.rid});
    
    %if find(strcmp(rid,existingSubjects)); continue; end
    %existingSubjects{end+1} = rid;
    
    if files_in.longitudinal; rid = [rid num2str(xls{l,column.session})]; end % To add session information, optional
    for i = 1:size(files_in.inputBase,2) % For each "dataset"
        tempInput = regexprep(files_in.inputBase{i},'*',sprintf(padding, rid),'once'); % Replace 1st * with patient name, zero padding
        subject = ['input.subject' rid int2str(i) ]; %int2str(i) to have both files_in.inputBase
        evalc([subject '.path = ''' tempInput '''']);
        if groupComparison; evalc([subject '.effect = xls{l,column.effect}']); end % Classify its group
        if seedComparison; evalc([subject '.effect = i']); end % Classify based on inputBase
        if isfield(files_in,'covariates');
            for j = 1:length(files_in.covariates)
                try % Try if covariates exist, if it doesn't, add info. If exist already, don't overwrite it.
                    doesItExist = evalc([subject '.covariates{' int2str(j) '}']);
                catch
                    evalc([subject '.covariates{' int2str(j) '} = xls{l,column.covariates{' int2str(j) '}}']);
                end
            end
        else
            files_in.covariates = {};
        end
        if isfield(files_in,'categoricalCovariates')
        for j = 1:length(files_in.categoricalCovariates)
            evalc([subject '.categoricalCovariates{' int2str(j) '} = xls{l,column.categoricalCovariates{' int2str(j) '}}']);
        end
        end
    end
end
clear xls, existingSubjects;

% Modify filename to get effect size and sd size
[input_ef, input_sd] = deal({}); % Create cell for each variable
subjects = fieldnames(input);
if groupComparison || seedComparison; X = zeros(length(subjects),2+length(files_in.covariates)); end
for i = 1:length(subjects)
    properEf = regexprep(input.(subjects{i}).path,'*','ef','once'); % Replace 2rd * with ef or sd, respectively
    properSd = regexprep(input.(subjects{i}).path,'*','sd','once');
    input_ef = [input_ef ; properEf]; % input_ef = input_ef(:); % To make it work
    input_sd = [input_sd ; properSd];
    
    % Generate Design Matrix
    if groupComparison || seedComparison
        subjectGroup = input.(subjects{i}).effect;
        if isa(subjectGroup,'double'); subjectGroup = num2str(subjectGroup); end
        switch subjectGroup
            case files_in.group{1}; X(i,1) = 1; X(i,2) = 0;
            case files_in.group{2}; X(i,1) = 0; X(i,2) = 1;
        end
        for j = 1:length(files_in.covariates)
            X(i,j+2) = input.(subjects{i}).covariates{j};
        end
    end
end
    
% Categorical Covariates
if isfield(files_in,'categoricalCovariates')
    for i = 1:length(files_in.categoricalCovariates)
        offset = size(X,2);
        subjects = fieldnames(input);
        values = [];
        for j = 1:length(subjects)
            value = input.(subjects{j}).categoricalCovariates{i};
            if ~any(values==value)
                values(end+1) = value;
                X(:,end+1) = zeros(size(X,1),1);
            end
            X(j,find(values==value)+offset) = 1;
        end
    end
end
%        rows = size(X,2)+1;
%        X = [X zeros(size(X,1),length(subjects))];
%        previousFactor = '0';
%        for i=1:length(subjects)
%            currentFactor = subjects{i}(1:end-1);
%            if i == 1
%                X(i,rows) = 1; previousFactor = currentFactor;
%            elseif strcmpi(subjects{i}(1:end-1),previousFactor) % If same subject
%                X(i,rows) = 1;
%            else
%                rows = rows + 1;
%                X(i,rows) = 1;
%                previousFactor = currentFactor;
%            end
%        end
%        for i=1:size(X,2) % Delete empty columns
%            if sum(X(:,i)) == 0; X(:,i:end) = []; break; end
%        end
clear input rows;

% Get ready
addpath(genpath('/opt/matlab7.5/toolbox/fmristat')); addpath(genpath('/opt/matlab12b/toolbox/emma'),'-end');
if groupComparison || seedComparison; contrast = [1 -1 zeros(1,size(X,2)-2)]; end
clear subjects;

if ~groupComparison && ~seedComparison
    clear contrast X;
    contrast = 1;
    X = ones(length(input_ef),1);
end

which_stats='_ef _sd _t';
fwhm_varatio = 50; % Inf normally otherwise
output_file_base{1} = files_in.outputBase;
my_multistat(input_ef,input_sd,[],[],X,contrast,output_file_base,which_stats,fwhm_varatio);
% my_multistat(input_ef,input_sd,[],[],X,contrast,output_file_base,which_stats,fwhm_varatio);
clear output_file_base files_ef files_sd;

end
