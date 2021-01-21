function out=f(u)

global a eps tau tau_h m g

El = u(1);
Hl = u(2);
Er = u(3);
Hr = u(4);
R = u(5);
L = u(6);



d_El = 1/tau*(-El + m*max(0, L-a*Er+eps*El-g*Hl));
d_Hl = 1/tau_h*(-Hl + El);
d_Er = 1/tau*(-Er + m*max(0, R-a*El+eps*Er-g*Hr));
d_Hr = 1/tau_h*(-Hr + Er);


out=[d_El; d_Hl; d_Er; d_Hr];

end
