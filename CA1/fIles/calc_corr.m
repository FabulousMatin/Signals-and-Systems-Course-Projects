function ro = calc_corr(t, tau, ts, input_signal)
    ro = zeros(size(t));
    for i=1:length(t)-int64(tau/ts)
        template_signal = zeros(size(t));
        template_signal(i:i+int64(tau/ts)-1) = 1;
        ro(i) = sum(template_signal .* input_signal);
    end
end

