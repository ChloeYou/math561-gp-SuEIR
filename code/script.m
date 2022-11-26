% Clear log
clear all; 
close all; 
clc

% Start timer
tic

for i=1:1

    % Set initial conditions
     St = 800;
     Et = 100;
     It = 50;
     Rt = 50;

    y0 = [St; Et; It; Rt];
    
    % Time steps
    tspan = [0:60]; 

    % ODE Solver
    [t,y] = ode45(@ODEsystemComplex,tspan,y0);

    x = [t,y];

end

% Save output to csv
writematrix(x,'sim-10-m.csv')

% End timer
toc