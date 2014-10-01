clear;
opt.modelFile='/home/wang/Documents/bin2/20140422_Database.xlsx';
opt.outputBase='/data/data03/wang/output/20140501_rest/';
opt.numberOfPadding = 4;


% ADNI, Side Comparison
files_in.compareSides_Anterior_diag3_datasetAdni_fwhm6.inputBase{1}='/data/data03/wang/input/20140422_ADNI/fMRIStat/lA6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Anterior_diag3_datasetAdni_fwhm6.inputBase{2}='/data/data03/wang/input/20140422_ADNI/fMRIStat/rA6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Anterior_diag3_datasetAdni_fwhm6.dataset='adni';
files_in.compareSides_Anterior_diag3_datasetAdni_fwhm6.selection.diag = '3';
files_in.compareSides_Anterior_diag3_datasetAdni_fwhm6.covariates={'scanAge','gender'};

files_in.compareSides_Posterior_diag3_datasetAdni_fwhm6.inputBase{1}='/data/data03/wang/input/20140422_ADNI/fMRIStat/lP6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Posterior_diag3_datasetAdni_fwhm6.inputBase{2}='/data/data03/wang/input/20140422_ADNI/fMRIStat/rP6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Posterior_diag3_datasetAdni_fwhm6.dataset='adni';
files_in.compareSides_Posterior_diag3_datasetAdni_fwhm6.selection.diag = '3';
files_in.compareSides_Posterior_diag3_datasetAdni_fwhm6.covariates={'scanAge','gender'};

% ADNI, Location Comparison
files_in.compareLocation_Left_diag3_datasetAdni_fwhm6.inputBase{1}='/data/data03/wang/input/20140422_ADNI/fMRIStat/lA6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Left_diag3_datasetAdni_fwhm6.inputBase{2}='/data/data03/wang/input/20140422_ADNI/fMRIStat/lP6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Left_diag3_datasetAdni_fwhm6.dataset='adni';
files_in.compareLocation_Left_diag3_datasetAdni_fwhm6.selection.diag = '3';
files_in.compareLocation_Left_diag3_datasetAdni_fwhm6.covariates={'scanAge','gender'};

files_in.compareLocation_Right_diag3_datasetAdni_fwhm6.inputBase{1}='/data/data03/wang/input/20140422_ADNI/fMRIStat/rA6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Right_diag3_datasetAdni_fwhm6.inputBase{2}='/data/data03/wang/input/20140422_ADNI/fMRIStat/rP6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Right_diag3_datasetAdni_fwhm6.dataset='adni';
files_in.compareLocation_Right_diag3_datasetAdni_fwhm6.selection.diag = '3';
files_in.compareLocation_Right_diag3_datasetAdni_fwhm6.covariates={'scanAge','gender'};

% ADNI, Side Comparison
files_in.compareSides_Anterior_diag3_datasetAdni_fwhm10.inputBase{1}='/data/data03/wang/input/20140422_ADNI/fMRIStat/lA10/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Anterior_diag3_datasetAdni_fwhm10.inputBase{2}='/data/data03/wang/input/20140422_ADNI/fMRIStat/rA10/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Anterior_diag3_datasetAdni_fwhm10.dataset='adni';
files_in.compareSides_Anterior_diag3_datasetAdni_fwhm10.selection.diag = '3';
files_in.compareSides_Anterior_diag3_datasetAdni_fwhm10.covariates={'scanAge','gender'};

files_in.compareSides_Posterior_diag3_datasetAdni_fwhm10.inputBase{1}='/data/data03/wang/input/20140422_ADNI/fMRIStat/lP10/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Posterior_diag3_datasetAdni_fwhm10.inputBase{2}='/data/data03/wang/input/20140422_ADNI/fMRIStat/rP10/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Posterior_diag3_datasetAdni_fwhm10.dataset='adni';
files_in.compareSides_Posterior_diag3_datasetAdni_fwhm10.selection.diag = '3';
files_in.compareSides_Posterior_diag3_datasetAdni_fwhm10.covariates={'scanAge','gender'};

% ADNI, Location Comparison
files_in.compareLocation_Left_diag3_datasetAdni_fwhm10.inputBase{1}='/data/data03/wang/input/20140422_ADNI/fMRIStat/lA10/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Left_diag3_datasetAdni_fwhm10.inputBase{2}='/data/data03/wang/input/20140422_ADNI/fMRIStat/lP10/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Left_diag3_datasetAdni_fwhm10.dataset='adni';
files_in.compareLocation_Left_diag3_datasetAdni_fwhm10.selection.diag = '3';
files_in.compareLocation_Left_diag3_datasetAdni_fwhm10.covariates={'scanAge','gender'};

files_in.compareLocation_Right_diag3_datasetAdni_fwhm10.inputBase{1}='/data/data03/wang/input/20140422_ADNI/fMRIStat/rA10/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Right_diag3_datasetAdni_fwhm10.inputBase{2}='/data/data03/wang/input/20140422_ADNI/fMRIStat/rP10/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Right_diag3_datasetAdni_fwhm10.dataset='adni';
files_in.compareLocation_Right_diag3_datasetAdni_fwhm10.selection.diag = '3';
files_in.compareLocation_Right_diag3_datasetAdni_fwhm10.covariates={'scanAge','gender'};

% MCSA, Side Comparison
files_in.compareSides_Anterior_diag3_datasetMcsa_fwhm6.inputBase{1}='/data/data02/wang/input/20130612_mcsa/fMRIStat/lA6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Anterior_diag3_datasetMcsa_fwhm6.inputBase{2}='/data/data02/wang/input/20130612_mcsa/fMRIStat/rA6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Anterior_diag3_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareSides_Anterior_diag3_datasetMcsa_fwhm6.selection.diag = '3';
files_in.compareSides_Anterior_diag3_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

files_in.compareSides_Posterior_diag3_datasetMcsa_fwhm6.inputBase{1}='/data/data02/wang/input/20130612_mcsa/fMRIStat/lP6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Posterior_diag3_datasetMcsa_fwhm6.inputBase{2}='/data/data02/wang/input/20130612_mcsa/fMRIStat/rP6/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Posterior_diag3_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareSides_Posterior_diag3_datasetMcsa_fwhm6.selection.diag = '3';
files_in.compareSides_Posterior_diag3_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

% MCSA, Location Comparison
files_in.compareLocation_Left_diag3_datasetMcsa_fwhm6.inputBase{1}='/data/data02/wang/input/20130612_mcsa/fMRIStat/lA6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Left_diag3_datasetMcsa_fwhm6.inputBase{2}='/data/data02/wang/input/20130612_mcsa/fMRIStat/lP6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Left_diag3_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareLocation_Left_diag3_datasetMcsa_fwhm6.selection.diag = '3';
files_in.compareLocation_Left_diag3_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

files_in.compareLocation_Right_diag3_datasetMcsa_fwhm6.inputBase{1}='/data/data02/wang/input/20130612_mcsa/fMRIStat/rA6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Right_diag3_datasetMcsa_fwhm6.inputBase{2}='/data/data02/wang/input/20130612_mcsa/fMRIStat/rP6/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Right_diag3_datasetMcsa_fwhm6.dataset='mcsa';
files_in.compareLocation_Right_diag3_datasetMcsa_fwhm6.selection.diag = '3';
files_in.compareLocation_Right_diag3_datasetMcsa_fwhm6.covariates={'scanAge','gender'};

% MCSA, Side Comparison
files_in.compareSides_Anterior_diag3_datasetMcsa_fwhm10.inputBase{1}='/data/data02/wang/input/20130612_mcsa/fMRIStat/lA10/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Anterior_diag3_datasetMcsa_fwhm10.inputBase{2}='/data/data02/wang/input/20130612_mcsa/fMRIStat/rA10/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Anterior_diag3_datasetMcsa_fwhm10.dataset='mcsa';
files_in.compareSides_Anterior_diag3_datasetMcsa_fwhm10.selection.diag = '3';
files_in.compareSides_Anterior_diag3_datasetMcsa_fwhm10.covariates={'scanAge','gender'};

files_in.compareSides_Posterior_diag3_datasetMcsa_fwhm10.inputBase{1}='/data/data02/wang/input/20130612_mcsa/fMRIStat/lP10/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Posterior_diag3_datasetMcsa_fwhm10.inputBase{2}='/data/data02/wang/input/20130612_mcsa/fMRIStat/rP10/data2/subject*_session1_multi_*.mnc';
files_in.compareSides_Posterior_diag3_datasetMcsa_fwhm10.dataset='mcsa';
files_in.compareSides_Posterior_diag3_datasetMcsa_fwhm10.selection.diag = '3';
files_in.compareSides_Posterior_diag3_datasetMcsa_fwhm10.covariates={'scanAge','gender'};

% MCSA, Location Comparison
files_in.compareLocation_Left_diag3_datasetMcsa_fwhm10.inputBase{1}='/data/data02/wang/input/20130612_mcsa/fMRIStat/lA10/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Left_diag3_datasetMcsa_fwhm10.inputBase{2}='/data/data02/wang/input/20130612_mcsa/fMRIStat/lP10/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Left_diag3_datasetMcsa_fwhm10.dataset='mcsa';
files_in.compareLocation_Left_diag3_datasetMcsa_fwhm10.selection.diag = '3';
files_in.compareLocation_Left_diag3_datasetMcsa_fwhm10.covariates={'scanAge','gender'};

files_in.compareLocation_Right_diag3_datasetMcsa_fwhm10.inputBase{1}='/data/data02/wang/input/20130612_mcsa/fMRIStat/rA10/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Right_diag3_datasetMcsa_fwhm10.inputBase{2}='/data/data02/wang/input/20130612_mcsa/fMRIStat/rP10/data2/subject*_session1_multi_*.mnc';
files_in.compareLocation_Right_diag3_datasetMcsa_fwhm10.dataset='mcsa';
files_in.compareLocation_Right_diag3_datasetMcsa_fwhm10.selection.diag = '3';
files_in.compareLocation_Right_diag3_datasetMcsa_fwhm10.covariates={'scanAge','gender'};

multiStat(files_in,opt);
