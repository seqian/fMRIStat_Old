clear;
opt.modelFile='/home/wang/Documents/bin2/20140422_Database.xlsx';
opt.outputBase='/data/data03/wang/output/20140430_mcsa6/';
opt.numberOfPadding = 4; % Line 56-58


% MCSA, Side Comparison
files_in.compareSides_Anterior_diag1_datasetMcsa_fwhm6.inputBase{1}='/data/data02/wang/input/20130612_mcsa/fMRIStat/lA6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Anterior_diag1_datasetMcsa_fwhm6.inputBase{2}='/data/data02/wang/input/20130612_mcsa/fMRIStat/rA6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Anterior_diag1_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareSides_Anterior_diag1_datasetMcsa_fwhm6.selection.diag = '1';
files_in.compareSides_Anterior_diag1_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

files_in.compareSides_Posterior_diag1_datasetMcsa_fwhm6.inputBase{1}='/data/data02/wang/input/20130612_mcsa/fMRIStat/lP6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Posterior_diag1_datasetMcsa_fwhm6.inputBase{2}='/data/data02/wang/input/20130612_mcsa/fMRIStat/rP6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Posterior_diag1_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareSides_Posterior_diag1_datasetMcsa_fwhm6.selection.diag = '1';
files_in.compareSides_Posterior_diag1_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

% MCSA, Location Comparison
files_in.compareLocation_Left_diag1_datasetMcsa_fwhm6.inputBase{1}='/data/data02/wang/input/20130612_mcsa/fMRIStat/lA6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Left_diag1_datasetMcsa_fwhm6.inputBase{2}='/data/data02/wang/input/20130612_mcsa/fMRIStat/lP6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Left_diag1_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareLocation_Left_diag1_datasetMcsa_fwhm6.selection.diag = '1';
files_in.compareLocation_Left_diag1_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

files_in.compareLocation_Right_diag1_datasetMcsa_fwhm6.inputBase{1}='/data/data02/wang/input/20130612_mcsa/fMRIStat/rA6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Right_diag1_datasetMcsa_fwhm6.inputBase{2}='/data/data02/wang/input/20130612_mcsa/fMRIStat/rP6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Right_diag1_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareLocation_Right_diag1_datasetMcsa_fwhm6.selection.diag = '1';
files_in.compareLocation_Right_diag1_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

% MCSA, Group Comparison, Left Anterior
files_in.compareGroups_LeftAnterior_diag12_datasetMcsa_fwhm6.inputBase='/data/data02/wang/input/20130612_mcsa/fMRIStat/lA6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_LeftAnterior_diag12_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareGroups_LeftAnterior_diag12_datasetMcsa_fwhm6.effect='diag';
files_in.compareGroups_LeftAnterior_diag12_datasetMcsa_fwhm6.group{1}='1';
files_in.compareGroups_LeftAnterior_diag12_datasetMcsa_fwhm6.group{2} = '2';
files_in.compareGroups_LeftAnterior_diag12_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_LeftAnterior_diag13_datasetMcsa_fwhm6.inputBase='/data/data02/wang/input/20130612_mcsa/fMRIStat/lA6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_LeftAnterior_diag13_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareGroups_LeftAnterior_diag13_datasetMcsa_fwhm6.effect='diag';
files_in.compareGroups_LeftAnterior_diag13_datasetMcsa_fwhm6.group{1}='1';
files_in.compareGroups_LeftAnterior_diag13_datasetMcsa_fwhm6.group{2} = '3';
files_in.compareGroups_LeftAnterior_diag13_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_LeftAnterior_diag23_datasetMcsa_fwhm6.inputBase='/data/data02/wang/input/20130612_mcsa/fMRIStat/lA6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_LeftAnterior_diag23_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareGroups_LeftAnterior_diag23_datasetMcsa_fwhm6.effect='diag';
files_in.compareGroups_LeftAnterior_diag23_datasetMcsa_fwhm6.group{1}='2';
files_in.compareGroups_LeftAnterior_diag23_datasetMcsa_fwhm6.group{2} = '3';
files_in.compareGroups_LeftAnterior_diag23_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

% MCSA, Group Comparison, Left Posterior
files_in.compareGroups_LeftPosterior_diag12_datasetMcsa_fwhm6.inputBase='/data/data02/wang/input/20130612_mcsa/fMRIStat/lP6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_LeftPosterior_diag12_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareGroups_LeftPosterior_diag12_datasetMcsa_fwhm6.effect='diag';
files_in.compareGroups_LeftPosterior_diag12_datasetMcsa_fwhm6.group{1}='1';
files_in.compareGroups_LeftPosterior_diag12_datasetMcsa_fwhm6.group{2} = '2';
files_in.compareGroups_LeftPosterior_diag12_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_LeftPosterior_diag13_datasetMcsa_fwhm6.inputBase='/data/data02/wang/input/20130612_mcsa/fMRIStat/lP6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_LeftPosterior_diag13_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareGroups_LeftPosterior_diag13_datasetMcsa_fwhm6.effect='diag';
files_in.compareGroups_LeftPosterior_diag13_datasetMcsa_fwhm6.group{1}='1';
files_in.compareGroups_LeftPosterior_diag13_datasetMcsa_fwhm6.group{2} = '3';
files_in.compareGroups_LeftPosterior_diag13_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_LeftPosterior_diag23_datasetMcsa_fwhm6.inputBase='/data/data02/wang/input/20130612_mcsa/fMRIStat/lP6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_LeftPosterior_diag23_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareGroups_LeftPosterior_diag23_datasetMcsa_fwhm6.effect='diag';
files_in.compareGroups_LeftPosterior_diag23_datasetMcsa_fwhm6.group{1}='2';
files_in.compareGroups_LeftPosterior_diag23_datasetMcsa_fwhm6.group{2} = '3';
files_in.compareGroups_LeftPosterior_diag23_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

% MCSA, Group Comparison, Right Anterior
files_in.compareGroups_RightAnterior_diag12_datasetMcsa_fwhm6.inputBase='/data/data02/wang/input/20130612_mcsa/fMRIStat/rA6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_RightAnterior_diag12_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareGroups_RightAnterior_diag12_datasetMcsa_fwhm6.effect='diag';
files_in.compareGroups_RightAnterior_diag12_datasetMcsa_fwhm6.group{1}='1';
files_in.compareGroups_RightAnterior_diag12_datasetMcsa_fwhm6.group{2} = '2';
files_in.compareGroups_RightAnterior_diag12_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_RightAnterior_diag13_datasetMcsa_fwhm6.inputBase='/data/data02/wang/input/20130612_mcsa/fMRIStat/rA6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_RightAnterior_diag13_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareGroups_RightAnterior_diag13_datasetMcsa_fwhm6.effect='diag';
files_in.compareGroups_RightAnterior_diag13_datasetMcsa_fwhm6.group{1}='1';
files_in.compareGroups_RightAnterior_diag13_datasetMcsa_fwhm6.group{2} = '3';
files_in.compareGroups_RightAnterior_diag13_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_RightAnterior_diag23_datasetMcsa_fwhm6.inputBase='/data/data02/wang/input/20130612_mcsa/fMRIStat/rA6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_RightAnterior_diag23_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareGroups_RightAnterior_diag23_datasetMcsa_fwhm6.effect='diag';
files_in.compareGroups_RightAnterior_diag23_datasetMcsa_fwhm6.group{1}='2';
files_in.compareGroups_RightAnterior_diag23_datasetMcsa_fwhm6.group{2} = '3';
files_in.compareGroups_RightAnterior_diag23_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

% MCSA, Group Comparison, Right Posterior
files_in.compareGroups_RightPosterior_diag12_datasetMcsa_fwhm6.inputBase='/data/data02/wang/input/20130612_mcsa/fMRIStat/rP6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_RightPosterior_diag12_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareGroups_RightPosterior_diag12_datasetMcsa_fwhm6.effect='diag';
files_in.compareGroups_RightPosterior_diag12_datasetMcsa_fwhm6.group{1}='1';
files_in.compareGroups_RightPosterior_diag12_datasetMcsa_fwhm6.group{2} = '2';
files_in.compareGroups_RightPosterior_diag12_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_RightPosterior_diag13_datasetMcsa_fwhm6.inputBase='/data/data02/wang/input/20130612_mcsa/fMRIStat/rP6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_RightPosterior_diag13_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareGroups_RightPosterior_diag13_datasetMcsa_fwhm6.effect='diag';
files_in.compareGroups_RightPosterior_diag13_datasetMcsa_fwhm6.group{1}='1';
files_in.compareGroups_RightPosterior_diag13_datasetMcsa_fwhm6.group{2} = '3';
files_in.compareGroups_RightPosterior_diag13_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_RightPosterior_diag23_datasetMcsa_fwhm6.inputBase='/data/data02/wang/input/20130612_mcsa/fMRIStat/rP6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_RightPosterior_diag23_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareGroups_RightPosterior_diag23_datasetMcsa_fwhm6.effect='diag';
files_in.compareGroups_RightPosterior_diag23_datasetMcsa_fwhm6.group{1}='2';
files_in.compareGroups_RightPosterior_diag23_datasetMcsa_fwhm6.group{2} = '3';
files_in.compareGroups_RightPosterior_diag23_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

multiStat(files_in,opt);
