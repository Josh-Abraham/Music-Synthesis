tTotal = 0:0.000125:8;
t1 = 0.5:0.000125:8;
tr2 = 0.75:0.000125:1.125;
t2 = 1.125:0.000125:8;
tr3 = 1.375:0.000125:1.75;
t3 = 1.75:0.000125:8;
t4 = 2.75:0.000125:8;

tr4 = 4:0.000125:4.5;
t5 = 4.5:0.000125:8;
tr5 = 4.75:0.000125:5.125;
t6 = 5.125:0.000125:8;
tr6 = 5.375:0.000125:5.75;
t7 = 5.75:0.000125:8;
t8 = 6.75:0.000125:8;

tdecay = 0:0.000125:8;
temp = zeros(1,4000);
tlong1 = [temp t1];
temp = zeros(1,9000);
tlong2 = [temp t2];
temp = zeros(1, 14000);
tlong3 = [temp t3];
temp = zeros(1, 22000);
tlong4 = [temp t4];
sig2 = 8*sin(2*pi*220*2^(10/12)*tlong1).*exp(-4*(tdecay-0.5));
sig2 = sig2 + 4*sin(2*pi*110*2^(10/12)*tlong1).*exp(-4*(tdecay-0.5));
sig2 = sig2 + 2*sin(2*pi*55*2^(10/12)*tlong1).*exp(-4*(tdecay-0.5));
sig4 = 8*sin(2*pi*220*2^(10/12)*tlong2).*exp(-4*(tdecay-1.125));
sig4 = sig4 + 4*sin(2*pi*110*2^(10/12)*tlong2).*exp(-4*(tdecay-1.125));
sig4 = sig4 + 2*sin(2*pi*55*2^(10/12)*tlong2).*exp(-4*(tdecay-1.125));
sig6 = 8*sin(2*pi*220*2^(10/12)*tlong3).*exp(-4*(tdecay-1.75));
sig6 = sig6 + 4*sin(2*pi*110*2^(10/12)*tlong3).*exp(-4*(tdecay-1.75));
sig6 = sig6 + 2*sin(2*pi*55*2^(10/12)*tlong3).*exp(-4*(tdecay-1.75));
sig8 = 8*sin(2*pi*220*2^(6/12)*tlong4).*exp(-4*(tdecay-2.75));
sig8 = sig8 + 4*sin(2*pi*110*2^(6/12)*tlong4).*exp(-4*(tdecay-2.75));
sig8 = sig8 + 2*sin(2*pi*55*2^(6/12)*tlong4).*exp(-4*(tdecay-2.75));

temp = zeros(1,36000);
tlong5 = [temp t5];
temp = zeros(1,41000);
tlong6 = [temp t6];
temp = zeros(1, 46000);
tlong7 = [temp t7];
temp = zeros(1, 54000);
tlong8 = [temp t8];
sig10 = 8*sin(2*pi*220*2^(8/12)*tlong5).*exp(-4*(tdecay-4.5));
sig10 = sig10 + 4*sin(2*pi*110*2^(8/12)*tlong5).*exp(-4*(tdecay-4.5));
sig10 = sig10 + 2*sin(2*pi*55*2^(8/12)*tlong5).*exp(-4*(tdecay-4.5));
sig12 = 8*sin(2*pi*220*2^(8/12)*tlong6).*exp(-4*(tdecay-5.125));
sig12 = sig12 + 4*sin(2*pi*110*2^(8/12)*tlong6).*exp(-4*(tdecay-5.125));
sig12 = sig12 + 2*sin(2*pi*55*2^(8/12)*tlong6).*exp(-4*(tdecay-5.125));
sig14 = 8*sin(2*pi*220*2^(8/12)*tlong7).*exp(-4*(tdecay-5.75));
sig14 = sig14 + 4*sin(2*pi*110*2^(8/12)*tlong7).*exp(-4*(tdecay-5.75));
sig14 = sig14 + 2*sin(2*pi*55*2^(8/12)*tlong7).*exp(-4*(tdecay-5.75));
sig16 = 8*sin(2*pi*220*2^(5/12)*tlong8).*exp(-4*(tdecay-6.75));
sig16 = sig16 + 4*sin(2*pi*110*2^(5/12)*tlong8).*exp(-4*(tdecay-6.75));
sig16 = sig16 + 2*sin(2*pi*55*2^(5/12)*tlong8).*exp(-4*(tdecay-6.75));

measure1 =  sig2 + sig4 + sig6 + sig8 + sig10 + sig12 + sig14 + sig16;
fs = 8000;
audiowrite('Harmonics.wav', measure1,fs);

%P_3_9(measure1',8000,0, 440);

