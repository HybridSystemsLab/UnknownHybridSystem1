function zdot = Fp(z)
%--------------------------------------------------------------------------
% Project: Hybrid Feedback Control book
% Description: Unknown hybrid system 1 (Exercise 8)
% https://hybrid.soe.ucsc.edu/software
% http://hybridsimulator.wordpress.com/
% Filename: Fp.m
%--------------------------------------------------------------------------

% Definition of state
z1 = z(1);
z2 = z(2);

% Definition of zdot, with constant input
zdot = [z2; -z1];

end