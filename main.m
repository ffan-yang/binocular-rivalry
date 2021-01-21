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

end_graph = 3.5;
step = 0.1;

N_graph = end_graph/step;
max_values_El = zeros(N_graph, 1);
min_values_El = zeros(N_graph, 1);
max_values_Er = zeros(N_graph, 1);
min_values_Er = zeros(N_graph, 1);

i = 1;

for a = 0.0:step:end_graph
    out = sim('model');
    % TODO: Check that transient state lasts until N/2!
    
    max_values_El(i) = max(out.El.Data(N/2:end));
    min_values_El(i) = min(out.El.Data(N/2:end));
    max_values_Er(i) = max(out.Er.Data(N/2:end));
    min_values_Er(i) = min(out.Er.Data(N/2:end));
    i = i + 1;
    

end

plot(max_values_El);
hold on
plot(min_values_El);

