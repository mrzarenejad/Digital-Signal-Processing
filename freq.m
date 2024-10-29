function [db,mag,pha,grd,w]=freq(a,b);
[H,w]=freqz(a,b,1000,'whole');
H=(H(1:1:501))'; w=(w(1:1:501))';
mag=abs(H) ;db=20*log10((mag+eps)/max(mag));
pha=angle(H); grd=grpdelay(a,b,w);