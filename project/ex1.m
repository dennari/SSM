% Course project exercise 1

p = 4;
N = 1024;
r1 = -0.4+0.2i;
r2 = -0.2-0.3i;
r = [r1 1/conj(r1) r2 1/conj(r2)]; % roots of the characteristic polynomial

%a = rand(1,p)'/10;
%a = []
a=poly(r);
a
a=a(2:end)';
roots([1;a])
a=a(end:-1:1)

v=r(2)^p;
for k=1:p
  v=v+a(k)*(r(2))^(p-k);
end
v

if 1

d = zeros(1,N);
b = 0.8;


% d(n)
for k=1:N
  prev = zeros(p,1);
  for n=1:p
    if k-n > 0
      prev(n) = d(k-n);
    end
  end
  d(k) = a'*prev+b*randn;
end

figure;
plot(d(1:256))

% w(n)
w = randn(1,N);

% x(n)
x = d+w;
figure;
plot(x(1:256));

% rx(k)
[rx,lags] = xcorr(x);
rx = rx(N:end)/N;
figure;
plot(lags(N:end),rx);

% rxw(k)
[rxw,lags] = xcorr(x,d);
rxw = rxw(N:end)/N;
figure;
plot(lags(N:end),rxw);
end
