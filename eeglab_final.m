% close all; clc;
[ALLEEG, EEG, CURRENTSET, ALLCOM] = eeglab;
%% Load dataset
EEG = pop_loadset('filename','S008_L_vs_R_hand.set', ...
'filepath','C:\Germany 2024\BTU\Sem 2\BCI\report\');
[ALLEEG, EEG, CURRENTSET] = eeg_store(ALLEEG, EEG, 0);
%% Filter data (1–30 Hz bandpass)
EEG = pop_eegfiltnew(EEG, 'locutoff', 1, 'hicutoff', 30);
[ALLEEG, EEG, CURRENTSET] = pop_newset(ALLEEG, EEG, 1, 'setname', 'filtered', 'gui','off');
%% Re-reference to average
EEG = pop_reref(EEG, []);
[ALLEEG, EEG, CURRENTSET] = pop_newset(ALLEEG, EEG, 2, 'setname', 'avg_ref', 'gui','off');
%% Create epochs for Left (T1) and Right (T2)
baseEEG = EEG; % filtered + reref + ICA continuous data
% Left-hand (T1)
EEG = pop_epoch(baseEEG, {'T1'}, [-1 4], 'newname', 'epochs_L', 'epochinfo', 'yes');
EEG = pop_rmbase(EEG, [-1000 0]);
[ALLEEG, EEG, indL] = pop_newset(ALLEEG, EEG, CURRENTSET + 1, 'setname','epochs_L_bc', 'gui','off');
% Right-hand (T2)
EEG = pop_epoch(baseEEG, {'T2'}, [-1 4], 'newname', 'epochs_R', 'epochinfo', 'yes');
EEG = pop_rmbase(EEG, [-1000 0]);
[ALLEEG, EEG, indR] = pop_newset(ALLEEG, EEG, CURRENTSET + 1, 'setname','epochs_R_bc','gui', 'off');
%% Plot ERP overlay for Left vs Right (all channels)
% Tip: In the ERP plot window, click on channels Cz, C3, and C4
% to inspect the motor imagery-related differences.
pop_comperp(ALLEEG, 1, indL, indR, ...
'addavg','on', 'diffavg','on', 'subavg','on', ...
'addstd','off', 'diffstd','off', ...
'tplotopt', {'ydir', -1});
eeglab redraw;