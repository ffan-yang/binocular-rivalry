global a eps tau tau_h m g

a = 3.4;
eps = 0;

tau = 0.015;
tau_h = 1;
m = 1;
g = 3;


x_0 = [0; 0; 0; 0];
L = 1;
R = 0.95;

Ts = 0.001;
stop_time = 20;

out = sim('model');


plot(out.El);
hold on
plot(out.Hl);
hold on
plot(out.Er);
hold on
plot(out.Hr);