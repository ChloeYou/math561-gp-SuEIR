% y(i) = variable i with respect to t
% dydt(i) = dy(i)/dt

function dydt = ODEsystemComplex(t, y)

% Initial Conditions
St = 800;
Et = 100;
It = 50;
Rt = 50;

% Static Parameters from PMC7376536
N = 1000;
beta = 0.1; 
mu = 0.1;
sigma = 0.09;
gamma = 0.12;


% Initial conditions
dydt = [St; Et; It; Rt];

% ODE System
dydt(1) = -(beta * (y(2) + y(3)) * y(1) / N);
dydt(2) = (beta * (y(2) + y(3)) * y(1) / N) - sigma * y(2);
dydt(3) = mu * sigma * y(2) - gamma * y(3);
dydt(4) = gamma * y(3);

end