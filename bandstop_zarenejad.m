clear all;
clc;
close all;
M=73;
n=0:1:M-1;
A=33.97;
B=0.5842*(A-21)^0.4+0.07886*(A-21);
wd1=0.25*pi;                %%cut off frequency
wd2=0.5*pi;                 %%cut off frequency
wd3=pi;                     %%cut off frequency
hd=ideal(wd1,M)+2*ideal(wd3,M)-2*ideal(wd2,M);
wk=kaiser(M,B)';
H=hd.*wk;
[db,mag,pha,grd,w]=freq(H,[1]);
figure(1);
subplot(2,2,1);
plot(w/pi,db);
title('|H(W)| in dB')
subplot(2,2,2);
plot(w/pi,mag);
xlabel('(frequency)');
ylabel('|H(W)|');
title('|H(W)|')
grid;
axis([0 1 0 2.2]);
ay = gca;
ay.YTick = [0.06,[0.9:0.1:1.1],[1.9:0.1:2.1]];
ax = gca;
ax.XTick = [0,0.2,0.3,0.475,0.525,1];
subplot(2,2,3);
stem(n,H);
axis([-1 M -0.2 0.8]);
title('H[n]');
xlabel('n');
subplot(2,2,4);
stem(n,wk);
axis([-1 M 0 1.1]);
title('kaiser window');
xlabel('n');



