# First subtask

fprintf("Matrix A:\n")

temp1 = [
    3.25;
    10.10;
    5.04;
];

temp2 = [
    -1.07;
    0.25;
    -7.79;
];

temp3 = [
    2.34;
    -4.78;
    3.31; 
];

A = [
    temp1, temp2, temp3
]

clear temp1, temp2, temp3;

# Second subtask

fprintf("Matrix B:\n")

B = rand(3)
% B = [
%     1.0 2.0 3.0;
%     2.0 3.0 1.0;
%     3.0 1.0 2.0;
% ]

# Third subtask

fprintf("A + 10 * B:\n")
T = A + 10 * B

fprintf("B^{T}:\n")
B.'

fprintf("A .* B:\n")
A .* B

fprintf("Sorted A:\n")
sort(A)

fprintf("MaxMin B:\n")
[max(max(B)), min(min(A));]

fprintf("Determinant B:\n")
det(B)

# Fourth subtask

fprintf("Matrix C:\n")
C = zeros(3, 1);
C(2, 1) = 5.71;
C(3, 1) = -3.61;
C

# Fifth subtask

fprintf("A * X = C => X:\n")
X = A \ C

# Sixth subtask

fprintf("Matrix D:\n")
D = abs(sin(A) + B^(3.0 / 5.0))

# Seventh subtask

fprintf("Vector A:\n")
a = [
    3.2;
    2.8;
    -1.4;
]

fprintf("Vector B:\n")
b = [
    0.6;
    3.2;
    -4.8;
]

fprintf("a * b:\n")
dot(A, B)

fprintf("a x b:\n")
cross(A, B)

fprintf("|a|:\n")
norm(A)

# Eighth subtask

x = linspace(0, 4 * pi);
y = e.^(-x.^2);
z = sqrt(atan(x));

figure;

plot(x, y, "r-", x, z, "g--");
title("Eighth subtask");
xlabel("x");
ylabel("y");
legend("e^{-x^2}","sqrt(atan(x))");

# Ninth subtask

figure;

subplot(1, 2, 1);
plot(x, y, "r-");
title("Ninth 1-st 1/2 subtask");
xlabel("x");
ylabel("y");
legend("e^{-x^2}");

subplot(1, 2, 2);
plot(x, z, "g--");
title("Ninth 2-nd 1/2 subtask");
xlabel("x");
ylabel("y");
legend("sqrt(atan(x))");

# Tenth subtask

x = linspace(1, 2);
y = x.';
z = log(x.^2 + y.^2 - x .* y);

figure;

surf(x, y, z);
grid on;
title("Tenth subtask");
xlabel("x");
ylabel("y");
zlabel("z");
legend("log(x^2 + y^2 - x * y)");
