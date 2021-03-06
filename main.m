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
N = stop_time/Ts;

start_graph = 0.86;
end_graph = 0.99;
step = 0.01;
N_graph = (end_graph - start_graph ) / step;

i = 1;

El_duration = zeros(N_graph, 1);
Er_duration = zeros(N_graph, 1);
for R = start_graph:step:end_graph
    out = sim("model");
    El_duration(i) = sum(out.El.Data(N/2:end) > 0.1) * Ts;
    Er_duration(i) = sum(out.Er.Data(N/2:end) > 0.1) * Ts;
    i = i+1;
end


plot(El_duration)
hold on
plot(Er_duration)
rateR = pinv(Er_duration);

scatter(start_graph:step:end_graph,rateR)

