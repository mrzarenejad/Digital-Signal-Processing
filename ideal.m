function hd=ideal(w,M);
alpha=(M-1)/2;n=[0:1:(M-1)];
m=n-alpha; fc=w/pi;hd=fc*sinc(fc*m);