function v  = Cp(z)
%--------------------------------------------------------------------------
% Project: Hybrid Feedback Control book
% Description: Unknown hybrid system 1 (Exercise 8)
% https://hybrid.soe.ucsc.edu/software
% http://hybridsimulator.wordpress.com/
% Filename: Cp.m
%--------------------------------------------------------------------------
% Return 0 if outside of Cp, and 1 if inside Cp
%--------------------------------------------------------------------------

% Definition of state
z1 = z(1);
z2 = z(2);

global u;

% Check flow condition
if (z1 >= u)
   v = 1;  % report flow
else
   v = 0;  % do not report flow
end

end