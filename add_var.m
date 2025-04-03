function ev_struct = add_var(trial_struct,var_list)

ev_struct = trial_struct;

cfg       = ev_struct.cfg;
med_data  = ev_struct.med_data;
trials    = ev_struct.trials;

for ievent = 1:length(var_list)
    ev_flags = med_data.E == cfg.events.(var_list{ievent});
    ev_times = med_data.D(ev_flags) * 10e-3;
    for iint = 1:size(trials,1)
        
        int_flags = ev_times >= trials(iint).t_start & ev_times < trials(iint).t_end;
        int_times = ev_times(int_flags);
        first_ev  = min(int_times - trials(iint).t_start);
        if isempty(first_ev); first_ev = NaN; end

        trials(iint).([var_list{ievent} '_num'])      = length(int_times);

        if cfg.
        trials(iint).([var_list{ievent} '_tstamp'])   = int_times;
        trials(iint).([var_list{ievent} '_lat1'])     = first_ev;
%         trials(iint).([var_list{ievent} '_meanlat'])  = mean(int_times - trials(iint).t_start);

    end
end

ev_struct.trials = trials;