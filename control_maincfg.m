function cfg = control_maincfg

% % files configuration %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% cfg.file.project        = '\\vs03\VS03-NandB-3\Ipek\projects\miniscope_rat_control\'; % Project's root folder
% cfg.file.data_analysis  = fullfile(cfg.file.project,'\Data_analysis\');               % Data_analysis folder
% cfg.file.processed      = fullfile(cfg.file.data_analysis,'\processed\');             % Processed data folder
% cfg.file.support        = fullfile(cfg.file.data_analysis,'\support\');               % Support data folder
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% EVENTS CONFIGURATION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% shock training %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cfg.events.shock.hdent      = 1;  % \ 1 - head entries to the magazine (10 ms sample rate)
cfg.events.shock.lever      = 2;  % \ 2 - lever press
cfg.events.shock.rew_cue_on = 3;  % \ 3 - reward cue on
cfg.events.shock.shk_cue_on = 4;  % \ 4 - punishment cue on
cfg.events.shock.rew        = 7;  % \ 7 - rewards given
cfg.events.shock.shk_start  = 8;  % \ 8 - shock start
cfg.events.shock.shk_end    = 9;  % \ 9 - shock end
cfg.events.shock.lever_ext  = 10; % \ 10 - lever extension
cfg.events.shock.lever_ret  = 11; % \ 11 - lever retraction
cfg.events.shock.omission   = 12; % \ 12 - omission trial end, lever in, cue(-s) off
cfg.events.shock.sess_start = 14; % \ 14 - session start
cfg.events.shock.sess_end   = 16; % \ 16 - session end
%%%%%%%%%%%%%%%%%%%%%%%%% EVENTS CONFIGURATION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
