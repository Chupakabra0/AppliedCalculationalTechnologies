pkg load symbolic

syms x(t);

Q = dsolve(2 * diff(x, t, 2) + 24 * diff(x, t) + 0.005^(-1) * x == 12 * sin(10 * t), [x(0) == 0.001 diff(x, t)(0) == 0])
y1=(153*sin(8*u1)/4000 + 51*cos(8*u1)/1000) * exp(-6*u1) - cos(10*u1)/20

figure;
ezplot(Q, [0 1 0 1]);
grid on;
title("Q(t)");
legend("Q(t)");
