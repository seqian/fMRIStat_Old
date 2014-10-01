% From fMRIStat input to Average T-stat analysis

%% General options
clear;
opt.base = '/data/data03/wang/input/20140805_ADNI';

opt.type = 'single'; % If 'multi', will run multiple points of interest (defined in csvFile). opt.x, opt.y and opt.z will be ignored.
opt.testing = 0; % If 1, will only display command sent. If 0, will run for all.
opt.voxelType = 'world'; % If 'voxel', will run differently.

% For single point of interest, World Voxels
opt.name = 'lP';
opt.x = -28; % Sagittal, Media-Lateral, Width x Coronal, Dorso-Ventral, Height x Axial, Anterior-Posterior, Depth
opt.y = -37;
opt.z = -4; % Must correspond to the acquisition plane.

%opt.time_frames = 140; %140, 52, 3, for ADNI
opt.slice_number = 52; %fmrilm in fmristat will say "Exceed matrix dimensions" if incorrect ?: 63 44 54 45 102
%opt.tr = 3;

% For multiple points of interest
opt.csvFile = '/home/wang/Documents/bin2/seedPoints.csv'; % One test per row, Column 1 TestName, Column 2 X oordinates, Column 3 Y Coordinates, Column 4 Z Coordinates

fMRIStat(opt);
