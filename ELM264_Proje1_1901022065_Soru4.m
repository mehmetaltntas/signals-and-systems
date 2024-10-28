% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 1- PROBLEM 4


clear; close all;

% Zaman-diskret durum için veriler
n = -10:20;
x_n = (1/4).^n .* (n >= 0 & n < 5);
h_n = (1/2).^n .* (n >= -3 & n <= 1);

% Zaman-diskret durumun konvolüsyonu
y_n = conv(x_n, h_n, 'full');
n_conv = (min(n)+min(n)):1:(max(n)+max(n));

% Zaman-sürekli durum için veriler
t = linspace(-10, 10, 1000);
x_t = sin(pi * t) .* (t >= 0 & t < 2);
h_t = 0.5 * ((t >= -5) & (t <= 2));

% Zaman-sürekli durumun konvolüsyonu
dt = t(2) - t(1);  %  delta t
y_t = conv(x_t, h_t, 'full') * dt;
t_conv = linspace(min(t) + min(t), max(t) + max(t), numel(y_t));


figure;

% Zaman-diskret işaretler
subplot(2, 4, 1);
stem(n, x_n, 'b', 'filled');
title('Zaman-Diskret Giriş x[n]');
xlabel('n');
ylabel('x[n]');
grid on;

subplot(2, 4, 2);
stem(n, h_n, 'b', 'filled');
title('Zaman-Diskret Dürtü h[n]');
xlabel('n');
ylabel('h[n]');
grid on;

subplot(2, 4, 3);
stem(n_conv, y_n, 'b', 'filled');
title('Zaman-Diskret Çıkış y[n]');
xlabel('n');
ylabel('y[n]');
grid on;

subplot(2, 4, 4);
axis off;  


% Zaman-sürekli işaretler
subplot(2, 4, 5);
plot(t, x_t, 'r');
title('Zaman-Sürekli Giriş x(t)');
xlabel('t');
ylabel('x(t)');
grid on;

subplot(2, 4, 6);
plot(t, h_t, 'r');
title('Zaman-Sürekli Dürtü h(t)');
xlabel('t');
ylabel('h(t)');
grid on;

subplot(2, 4, 7);
plot(t_conv, y_t, 'r');
title('Zaman-Sürekli Çıkış y(t)');
xlabel('t');
ylabel('y(t)');
grid on;

subplot(2, 4, 8);
axis off;  


sgtitle('Zaman-Diskret ve Zaman-Sürekli İşaretlerin Konvolüsyonları'); 
