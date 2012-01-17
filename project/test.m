
 r=[0.1 0.2 0.3 0.4];
 c=poly(1./r);
 v = 0;
 p = size(c,2);
 for k=p:-1:1
     v = v+c(k)*(1/r(1))^(p-k);
 end
 v