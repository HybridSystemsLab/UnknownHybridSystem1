%--------------------------------------------------------------------------
% Project: Hybrid Feedback Control book
% Description: Unknown hybrid system 1 (Exercise 8)
% https://hybrid.soe.ucsc.edu/software
% http://hybridsimulator.wordpress.com/
% Filename: run.m
% Set of simulation files created and edited by 
% Ricardo Sanfelice
%--------------------------------------------------------------------------

% set of initial conditions 1
z1_0 = 2;
z2_0 = 0;
% set of initial conditions 2
%z1_0 = 1;
%z2_0 = 1;
% set of initial conditions 3
%z1_0 = 0.5;
%z2_0 = -1;
% set of initial conditions 4
%z1_0 = 0.5;
%z2_0 = 1;
z0 = [z1_0;z2_0];

global u;
u = 1;

% simulation horizon
TSPAN=[0 3];
JSPAN = [0 20];

% rule for jumps
% rule = 1 -> priority for jumps
% rule = 2 -> priority for flows
rule = 1;

options = odeset('RelTol',1e-6,'MaxStep',.001);

% simulate
[t,j,z] = HyEQsolver(@Fp,@Gp,@Cp,@Dp,...
    z0,TSPAN,JSPAN,rule,options,'ode23t');

% plot solution
figure(1)
clf
subplot(2,1,1), plotflows(t,j,z(:,1));
grid on
ylabel('z1')
ylabel('$z_{1}\phantom{aa}$','Interpreter','latex')
hYLabel = get(gca,'YLabel');
set(hYLabel,'rotation',0)
set(hYLabel, 'FontSize', 14)
subplot(2,1,2), plotflows(t,j,z(:,2));
grid on
ylabel('z2')
ylabel('$z_{2}\phantom{aaa}$','Interpreter','latex')
hYLabel = get(gca,'YLabel');
set(hYLabel,'rotation',0)
set(hYLabel, 'FontSize', 14)

print -depsc -tiff -r300 UnknownSystem1