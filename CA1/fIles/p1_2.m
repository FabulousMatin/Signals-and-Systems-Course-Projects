clearvars;
t = 0:0.01:1;
zl = sin(2*pi*t);
z2 = cos(2*pi*t);

figure;
subplot(1, 2, 1);
plot(t, zl, '--b')
title('Sin');
legend('sin');
s = 'sin (2 \pi t)';
text(0.5, 0.2, s);

subplot(1, 2, 2);
plot(t, z2, 'r')
title('Cos');
legend('cos');
s = 'cos (2 \pi t)';
text(0.25, -0.8, s);

xlabel('time');
ylabel('amplitude');
grid on;