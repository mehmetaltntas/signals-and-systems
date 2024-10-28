% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 1 - PROBLEM 1

% n ve t için aralık 
n = 0:49; %  0'dan  49'a dizi
t = linspace(0, 50, 500); % 0 ila 50 arasında 500 doğrusal aralıklı nokta

% Ayrık ve sürekli zaman fonksiyonları
x_n = exp(-0.05*n) .* (cos(0.3*n) + 1i * sin(0.3*n));
x_t = exp(-0.05*t) .* (cos(0.3*t) + 1i * sin(0.3*t));

% x[n] için gerçek ve sanal kısımları, büyüklüğü ve fazı 
real_n = real(x_n);
imag_n = imag(x_n);
magnitude_n = abs(x_n);
phase_n = angle(x_n);

% x[t] için gerçek ve sanal kısımları, büyüklüğü ve fazı 
real_t = real(x_t);
imag_t = imag(x_t);
magnitude_t = abs(x_t);
phase_t = angle(x_t);

% x[n] için grafikler
figure;

% x[n]'in gerçek kısmı
subplot(4, 1, 1);
stem(n, real_n, 'b', 'filled');
title(' x[n]`nin gerçek kısmı');
xlabel('n');
ylabel('y[n]');

% x[n]'in sanal kısmı
subplot(4, 1, 2);
stem(n, imag_n, 'b', 'filled');
title('x[n]`in sanal kısmı');
xlabel('n');
ylabel('y[n]');

% x[n]'in genliği
subplot(4, 1, 3);
stem(n, magnitude_n, 'r', 'filled');
title('x[n]`in genliği');
xlabel('n');
ylabel('Genlik');

% x[n]'in fazı
subplot(4, 1, 4);
stem(n, phase_n, 'm', 'filled');
title('x[n]`in fazı');
xlabel('n');
ylabel('Faz (radians)');


sgtitle('Ayrık Zamanlı Sinyal Karakteristikleri');

% x[t] için grafikler
figure;

% x(t)'nin gerçek kısmı
subplot(4, 1, 1);
plot(t, real_t, 'b');
title('x(t)`nin gerçek kısmı');
xlabel('t');
ylabel('y[t]');

% x(t)'nin sanal kısmı
subplot(4, 1, 2);
plot(t, imag_t, 'b');
title('x(t)`nin sanal kısmı');
xlabel('t');
ylabel('y[t]');

% x(t)'nin genliği
subplot(4, 1, 3);
plot(t, magnitude_t, 'r');
title('x(t)`nin genliği');
xlabel('t');
ylabel('Genlik');

% x(t)'nin fazı
subplot(4, 1, 4);
plot(t, phase_t, 'm');
title('x(t)`nin fazı');
xlabel('t');
ylabel('Faz (radians)');


sgtitle('Sürekli Zamanlı Sinyal Karakteristikleri');
