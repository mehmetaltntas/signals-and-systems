% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 1- PROBLEM 2

%  Bir fonksiyon tanıtıcısı kullanarak sinyal fonksiyonunu tanımlama
x = @(t) (t > -1 & t < 0) .* (t + 1) + ...
                   (t >= 0 & t < 2) .* 1 + ...
                   (t == 2) .* 1;

% Zaman vektörü
t = linspace(-3, 4, 1000);

% orijinal sinyal
x_original = x(t);

% Grafik penceresi 
figure;

% orijinal sinyal
subplot(2, 2, 1);
plot(t, x_original, 'DisplayName', 'x(t) ');
xlabel('t');
ylabel('x(t)');
title('Orijinal Sinyal x(t)');
grid on;
legend show;

% x(2t) için çizim
subplot(2, 2, 2);
plot(t, x(2 * t), 'DisplayName', 'x(2t)');
xlabel('t');
title(' x(2t) için Zaman Ölçeklendirme');
grid on;
legend show;

% x(t - 5/2) çizim
subplot(2, 2, 3);
plot(t, x(t - 5/2), 'DisplayName', 'x(t - 5/2) ');
xlabel('t');
title(' x(t - 5/2) için Zaman Kayması');
grid on;
legend show;

%  x(-2t + 5) çizim
subplot(2, 2, 4);
plot(t, x(-2 * t + 5), 'DisplayName', 'x(-2t + 5) ');
xlabel('t');
title(' x(-2t + 5) için Zaman Ölçekleme ve Kaydırma');
grid on;
legend show;


sgtitle('Sinyal Dönüşümleri ');


set(gcf, 'Position', [100, 100, 800, 600]); 
