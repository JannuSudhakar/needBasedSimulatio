x = csvread('req033.csv');
m = mean(x);
N=size(x);
L=length(x);
for i=1:N
   x(i)=x(i)-m;
end
NFFT = 2^nextpow2(L); 
X = fft(x,NFFT)/L;
y=(abs(X(1:NFFT/2+1)));
plot(y)