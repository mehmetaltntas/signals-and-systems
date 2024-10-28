% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 1- PROBLEM 3

% Zaman aralığını tanımlama
t = linspace(-3, 4, 1000);

% Sağlanan bilgilere dayanarak orijinal sinyali tanımlama
x_t = zeros(size(t));
x_t(t >= -1 & t < 0) = t(t >= -1 & t < 0) + 1;
x_t(t == 2) = 1;
x_t(t > 0 & t < 2) = 1;

% Çift ve tek parça hesaplaması için negatif t için sinyal fonksiyonunu
% tanımlama
x_t_neg = zeros(size(t));
x_t_neg(-t >= -1 & -t < 0) = -t(-t >= -1 & -t < 0) + 1;
x_t_neg(t == -2) = 1;
x_t_neg(-t > 0 & -t < 2) = 1;

% Sinyalin çift kısmını hesaplama
x_t_even = (x_t + x_t_neg) / 2;

% Sinyalin tek kısmını hesaplama
x_t_odd = (x_t - x_t_neg) / 2;

% Orijinal sinyali çizme
figure;
subplot(1, 3, 1);
plot(t, x_t, 'b', 'LineWidth', 2);
title('Orijinal Sinyal x(t)');
xlabel('t');
ylabel('x(t)');
grid on;

% Sinyalin çift kısmını çizme
subplot(1, 3, 2);
plot(t, x_t_even, 'b', 'LineWidth', 2);
title('x(t)`nin çift kısmı');
xlabel('t');
ylabel('x(t) Çift');
grid on;

% Sinyalin tek kısmını çizme
subplot(1, 3, 3);
plot(t, x_t_odd, 'b', 'LineWidth', 2);
title('x(t)`nin tek kısmı');
xlabel('t');
ylabel('x(t) Tek');
grid on;

sgtitle('Sinyal Analizi');
