tTotal = 0:0.000125:8;
t1 = 0.5:0.000125:0.75;
t2 = 1.125:0.000125:1.375;
t3 = 1.75:0.000125:2;
t4 = 3:0.000125:4;
t5 = 4.5:0.000125:4.75;
t6 = 5.125:0.000125:5.375;
t7 = 5.75:0.000125:6;
t8 = 7:0.000125:8;
tdecay = 0:0.000125:1;
tdecay1 = 0:0.000125:0.25;
sig1 = zeros(1, 4000);
sig2 = 128*sin(2*pi*220*(2^(10/12)*t1)).*exp(-4*tdecay1);
sig3 = zeros(1, 2999);
sig4 = 128*sin(2*pi*220*2^(10/12)*t2).*exp(-4*tdecay1);
sig5 = zeros(1, 2999);
sig6 = 128*sin(2*pi*220*2^(10/12)*t3).*exp(-4*tdecay1);
sig7 = zeros(1, 7999); %2<t<3
sig8 = 128*sin(2*pi*220*2^(6/12)*t4).*exp(-4*tdecay);
sig9 = zeros(1, 3999);
sig10 = 128*sin(2*pi*220*2^(8/12)*t5).*exp(-4*tdecay1);
sig11 = zeros(1, 2999);
sig12 = 128*sin(2*pi*220*2^(8/12)*t6).*exp(-4*tdecay1);
sig13 = zeros(1, 2999);
sig14 = 128*sin(2*pi*220*2^(8/12)*t7).*exp(-4*tdecay1);
sig15 = zeros(1, 7999); %6<t<7
sig16 = 128*sin(2*pi*220*2^(5/12)*t8).*exp(-4*tdecay);

music = [sig1 sig2 sig3 sig4 sig5 sig6 sig7 sig8 sig9 sig10 sig11 sig12 sig13 sig14 sig15 sig16];
fs = 8000;
plot(tTotal, music,'Color', [0.91, 0.35, 0.42]);
title('Decayed Version of Beethoven''s 5th Symphony', 'FontSize', 20);
xlabel('Time (Seconds)');
ylabel('Amplitude');
%audiowrite('DecayMusic1.mp4', measure1,fs);
