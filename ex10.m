p=3;
M = 4;

syms w E P real;
%E = zeros(M,p);
w = (1:p)/M*2*pi;
for i=1:p
    P(i,i) = sym(['p' num2str(i)]);
    for k=1:M
        E(k,i)=1i*w(i)*i*(k-1);
    end
end
E
exp(E)
Rs = exp(E)*P*exp(E)'
%[V,D]=eigs(Rs)
