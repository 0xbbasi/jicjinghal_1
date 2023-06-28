clc;
clear all;
close all;

syms x y z

a = 1;
b = 3;
c = 1;
d = 5;
I = 1.8;

gc = 16;
ge = 1.5;
theta = -0.25;
tc = 10;
te = 2;
Vs = 2;
landa = 10;

Ic = (gc * (x - Vs) / (1 + exp(-landa * x * (t - tc) - theta)));
Ie = ge * (x * (t - te) - x);
r = 0.0068;
xr = 1.6;
s = 4;
gc = 16;
ge = 1.5;
theta = -0.25;
tc = 10;
te = 2;
Vs = 2;
landa = 10;

xdot = y - a * x^3 + b * x^2 + I - z + Ie + Ic;
ydot = c - d * x^2 - y;
zdot = r * (s * (x - xr) - z);

eqns = [xdot == 0, ydot == 0, zdot == 0];
vars = [x, y, z];
sol = solve(eqns, vars);

equilibrium_points = [double(sol.x), double(sol.y), double(sol.z)]
