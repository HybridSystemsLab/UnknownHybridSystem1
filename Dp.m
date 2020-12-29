function v = Dp(z)
%--------------------------------------------------------------------------
% Project: Hybrid Feedback Control book
% Description: Unknown hybrid system 1 (Exercise 8)
% https://hybrid.soe.ucsc.edu/software
% http://hybridsimulator.wordpress.com/
% Filename: Dp.m
%--------------------------------------------------------------------------
% Return 0 if outside of Dp, and 1 if inside Dp
%--------------------------------------------------------------------------

% Definition of state
z1 = z(1);
z2 = z(2);

global u;

% Check jump condition
if (z1 <= u && z2 <= 0)
    v = 1;
else
    v = 0;
end

end
