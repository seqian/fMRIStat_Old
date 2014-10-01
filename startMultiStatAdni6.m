clear;
opt.modelFile='/home/wang/Documents/bin2/20140422_Database.xlsx';
opt.outputBase='/data/data03/wang/output/20140430_adni6/';
opt.numberOfPadding = 4; % Line 56-58


% ADNI, Side Comparison
files_in.compareSides_Anterior_diag1_datasetAdni_fwhm6.inputBase{1}='/data/data03/wang/input/20140422_ADNI/fMRIStat/lA6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Anterior_diag1_datasetAdni_fwhm6.inputBase{2}='/data/data03/wang/input/20140422_ADNI/fMRIStat/rA6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Anterior_diag1_datasetAdni_fwhm6.dataset='adni';
files_in.compareSides_Anterior_diag1_datasetAdni_fwhm6.selection.diag = '1';
files_in.compareSides_Anterior_diag1_datasetAdni_fwhm6.covariates={'scanAge','gender'};

files_in.compareSides_Posterior_diag1_datasetAdni_fwhm6.inputBase{1}='/data/data03/wang/input/20140422_ADNI/fMRIStat/lP6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Posterior_diag1_datasetAdni_fwhm6.inputBase{2}='/data/data03/wang/input/20140422_ADNI/fMRIStat/rP6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Posterior_diag1_datasetAdni_fwhm6.dataset='adni';
files_in.compareSides_Posterior_diag1_datasetAdni_fwhm6.selection.diag = '1';
files_in.compareSides_Posterior_diag1_datasetAdni_fwhm6.covariates={'scanAge','gender'};

% ADNI, Location Comparison
files_in.compareLocation_Left_diag1_datasetAdni_fwhm6.inputBase{1}='/data/data03/wang/input/20140422_ADNI/fMRIStat/lA6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Left_diag1_datasetAdni_fwhm6.inputBase{2}='/data/data03/wang/input/20140422_ADNI/fMRIStat/lP6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Left_diag1_datasetAdni_fwhm6.dataset='adni';
files_in.compareLocation_Left_diag1_datasetAdni_fwhm6.selection.diag = '1';
files_in.compareLocation_Left_diag1_datasetAdni_fwhm6.covariates={'scanAge','gender'};

files_in.compareLocation_Right_diag1_datasetAdni_fwhm6.inputBase{1}='/data/data03/wang/input/20140422_ADNI/fMRIStat/rA6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Right_diag1_datasetAdni_fwhm6.inputBase{2}='/data/data03/wang/input/20140422_ADNI/fMRIStat/rP6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Right_diag1_datasetAdni_fwhm6.dataset='adni';
files_in.compareLocation_Right_diag1_datasetAdni_fwhm6.selection.diag = '1';
files_in.compareLocation_Right_diag1_datasetAdni_fwhm6.covariates={'scanAge','gender'};

% ADNI, Group Comparison, Left Anterior
files_in.compareGroups_LeftAnterior_diag12_datasetAdni_fwhm6.inputBase='/data/data03/wang/input/20140422_ADNI/fMRIStat/lA6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_LeftAnterior_diag12_datasetAdni_fwhm6.dataset='adni';
files_in.compareGroups_LeftAnterior_diag12_datasetAdni_fwhm6.effect='diag';
files_in.compareGroups_LeftAnterior_diag12_datasetAdni_fwhm6.group{1}='1';
files_in.compareGroups_LeftAnterior_diag12_datasetAdni_fwhm6.group{2} = '2';
files_in.compareGroups_LeftAnterior_diag12_datasetAdni_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_LeftAnterior_diag13_datasetAdni_fwhm6.inputBase='/data/data03/wang/input/20140422_ADNI/fMRIStat/lA6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_LeftAnterior_diag13_datasetAdni_fwhm6.dataset='adni';
files_in.compareGroups_LeftAnterior_diag13_datasetAdni_fwhm6.effect='diag';
files_in.compareGroups_LeftAnterior_diag13_datasetAdni_fwhm6.group{1}='1';
files_in.compareGroups_LeftAnterior_diag13_datasetAdni_fwhm6.group{2} = '3';
files_in.compareGroups_LeftAnterior_diag13_datasetAdni_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_LeftAnterior_diag23_datasetAdni_fwhm6.inputBase='/data/data03/wang/input/20140422_ADNI/fMRIStat/lA6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_LeftAnterior_diag23_datasetAdni_fwhm6.dataset='adni';
files_in.compareGroups_LeftAnterior_diag23_datasetAdni_fwhm6.effect='diag';
files_in.compareGroups_LeftAnterior_diag23_datasetAdni_fwhm6.group{1}='2';
files_in.compareGroups_LeftAnterior_diag23_datasetAdni_fwhm6.group{2} = '3';
files_in.compareGroups_LeftAnterior_diag23_datasetAdni_fwhm6.covariates={'scanAge','gender'};

% ADNI, Group Comparison, Left Posterior
files_in.compareGroups_LeftPosterior_diag12_datasetAdni_fwhm6.inputBase='/data/data03/wang/input/20140422_ADNI/fMRIStat/lP6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_LeftPosterior_diag12_datasetAdni_fwhm6.dataset='adni';
files_in.compareGroups_LeftPosterior_diag12_datasetAdni_fwhm6.effect='diag';
files_in.compareGroups_LeftPosterior_diag12_datasetAdni_fwhm6.group{1}='1';
files_in.compareGroups_LeftPosterior_diag12_datasetAdni_fwhm6.group{2} = '2';
files_in.compareGroups_LeftPosterior_diag12_datasetAdni_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_LeftPosterior_diag13_datasetAdni_fwhm6.inputBase='/data/data03/wang/input/20140422_ADNI/fMRIStat/lP6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_LeftPosterior_diag13_datasetAdni_fwhm6.dataset='adni';
files_in.compareGroups_LeftPosterior_diag13_datasetAdni_fwhm6.effect='diag';
files_in.compareGroups_LeftPosterior_diag13_datasetAdni_fwhm6.group{1}='1';
files_in.compareGroups_LeftPosterior_diag13_datasetAdni_fwhm6.group{2} = '3';
files_in.compareGroups_LeftPosterior_diag13_datasetAdni_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_LeftPosterior_diag23_datasetAdni_fwhm6.inputBase='/data/data03/wang/input/20140422_ADNI/fMRIStat/lP6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_LeftPosterior_diag23_datasetAdni_fwhm6.dataset='adni';
files_in.compareGroups_LeftPosterior_diag23_datasetAdni_fwhm6.effect='diag';
files_in.compareGroups_LeftPosterior_diag23_datasetAdni_fwhm6.group{1}='2';
files_in.compareGroups_LeftPosterior_diag23_datasetAdni_fwhm6.group{2} = '3';
files_in.compareGroups_LeftPosterior_diag23_datasetAdni_fwhm6.covariates={'scanAge','gender'};

% ADNI, Group Comparison, Right Anterior
files_in.compareGroups_RightAnterior_diag12_datasetAdni_fwhm6.inputBase='/data/data03/wang/input/20140422_ADNI/fMRIStat/rA6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_RightAnterior_diag12_datasetAdni_fwhm6.dataset='adni';
files_in.compareGroups_RightAnterior_diag12_datasetAdni_fwhm6.effect='diag';
files_in.compareGroups_RightAnterior_diag12_datasetAdni_fwhm6.group{1}='1';
files_in.compareGroups_RightAnterior_diag12_datasetAdni_fwhm6.group{2} = '2';
files_in.compareGroups_RightAnterior_diag12_datasetAdni_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_RightAnterior_diag13_datasetAdni_fwhm6.inputBase='/data/data03/wang/input/20140422_ADNI/fMRIStat/rA6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_RightAnterior_diag13_datasetAdni_fwhm6.dataset='adni';
files_in.compareGroups_RightAnterior_diag13_datasetAdni_fwhm6.effect='diag';
files_in.compareGroups_RightAnterior_diag13_datasetAdni_fwhm6.group{1}='1';
files_in.compareGroups_RightAnterior_diag13_datasetAdni_fwhm6.group{2} = '3';
files_in.compareGroups_RightAnterior_diag13_datasetAdni_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_RightAnterior_diag23_datasetAdni_fwhm6.inputBase='/data/data03/wang/input/20140422_ADNI/fMRIStat/rA6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_RightAnterior_diag23_datasetAdni_fwhm6.dataset='adni';
files_in.compareGroups_RightAnterior_diag23_datasetAdni_fwhm6.effect='diag';
files_in.compareGroups_RightAnterior_diag23_datasetAdni_fwhm6.group{1}='2';
files_in.compareGroups_RightAnterior_diag23_datasetAdni_fwhm6.group{2} = '3';
files_in.compareGroups_RightAnterior_diag23_datasetAdni_fwhm6.covariates={'scanAge','gender'};

% ADNI, Group Comparison, Right Posterior
files_in.compareGroups_RightPosterior_diag12_datasetAdni_fwhm6.inputBase='/data/data03/wang/input/20140422_ADNI/fMRIStat/rP6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_RightPosterior_diag12_datasetAdni_fwhm6.dataset='adni';
files_in.compareGroups_RightPosterior_diag12_datasetAdni_fwhm6.effect='diag';
files_in.compareGroups_RightPosterior_diag12_datasetAdni_fwhm6.group{1}='1';
files_in.compareGroups_RightPosterior_diag12_datasetAdni_fwhm6.group{2} = '2';
files_in.compareGroups_RightPosterior_diag12_datasetAdni_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_RightPosterior_diag13_datasetAdni_fwhm6.inputBase='/data/data03/wang/input/20140422_ADNI/fMRIStat/rP6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_RightPosterior_diag13_datasetAdni_fwhm6.dataset='adni';
files_in.compareGroups_RightPosterior_diag13_datasetAdni_fwhm6.effect='diag';
files_in.compareGroups_RightPosterior_diag13_datasetAdni_fwhm6.group{1}='1';
files_in.compareGroups_RightPosterior_diag13_datasetAdni_fwhm6.group{2} = '3';
files_in.compareGroups_RightPosterior_diag13_datasetAdni_fwhm6.covariates={'scanAge','gender'};

files_in.compareGroups_RightPosterior_diag23_datasetAdni_fwhm6.inputBase='/data/data03/wang/input/20140422_ADNI/fMRIStat/rP6/data2/subject*_session1_multi_*.mnc';
files_in.compareGroups_RightPosterior_diag23_datasetAdni_fwhm6.dataset='adni';
files_in.compareGroups_RightPosterior_diag23_datasetAdni_fwhm6.effect='diag';
files_in.compareGroups_RightPosterior_diag23_datasetAdni_fwhm6.group{1}='2';
files_in.compareGroups_RightPosterior_diag23_datasetAdni_fwhm6.group{2} = '3';
files_in.compareGroups_RightPosterior_diag23_datasetAdni_fwhm6.covariates={'scanAge','gender'};

multiStat(files_in,opt);
