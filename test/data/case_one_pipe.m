function mpc = lib1

mpc.density                    = 827;     % petroleum density, kg per cubic m
mpc.viscosity                  = 4.9e-6;  % petroleum viscosity, squared m per second
mpc.gravitational_acceleration = 9.8;
mpc.base_head                  = 100;     % base head, m
mpc.base_length                = 542;     % m
mpc.base_flow                  = 0.5;     % petroleum volume flow rate, m3 per hour
mpc.units                      = 'si';
mpc.is_per_unit                = 0;
mpc.time_step                  = 0;

%% junction data
%  junction_i type head_min head_max elevation status
mpc.junction = [
  1  1  30 800 220 1
  2  0  30 800 100 1
];

%% pipeline data
% pipeline_i fr_junction to_junction diameter length flow_min flow_max friction_factor status
mpc.pipe = [
  30  1  2  0.8  10.0e3 0.1 1.389 0.0246 1
];

%% producer
% producer_i junction injection_min injection_max injection_nominal status dispatchable offer_price
mpc.producer = [
  1  1  0.1 1.0 0.3 1 1 300
];

%% consumer
% consumer_i junction wthdrawal_min withdrawal_max withdrawal_nominal status dispatchable bid_price
mpc.consumer = [
  1	 2	0.1 1.0 0.302 1 1 350
];

end
