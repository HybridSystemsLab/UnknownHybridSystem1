function zplus = Gp(z)
%--------------------------------------------------------------------------
% Project: Hybrid Feedback Control book
% Description: Unknown hybrid system 1 (Exercise 8)
% https://hybrid.soe.ucsc.edu/software
% http://hybridsimulator.wordpress.com/
% Filename: Gp.m
%--------------------------------------------------------------------------

% Definition of state
z1 = z(1);
z2 = z(2);

global u;

% Definition of zplus
zplus = [u; -z2];

end