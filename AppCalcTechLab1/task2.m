pkg load symbolic

# First subtask

fprintf("A * X = B => X:\n")

A = [
    1.0 1.0 -1.0;
    1.0 -1.0 1.0;
    -1.0 1.0 1.0;
]

B = [
    36.0;
    13.0;
    7.0;
]

X = A \ B

# Second subtask

syms x y;

fprintf("Zero of -3 * x^3:\n")
solve(-3.0 * x^3 == 0)

fprintf("Zero of x^4 - 2 * x^2 + 10:\n")
solve(x^4 - 2 * x^2 + 10 == 0)

# Third subtask

fprintf("Limit of cos(x)^((x * sin(x))^(-1)):\n")
limit(@(x) cos(x)^((x * sin(x))^(-1)), x, 0)

# Fourth subtask

fprintf("Diff of log(e^(2 * x) + 1):\n")
diff(log(e^(2 * x) + 1))

fprintf("Diff of x^2 * y^2 + 2 * log(x * y) + 4:\n")
diff(x^2 * y^2 + 2 * log(x * y) + 4)

# Fifth subtask

fprintf("2-nd Diff of (x + 1) / (sqrt(1 - x - x^2)):\n")
diff(diff((x + 1) / (sqrt(1 - x - x^2))))

# Sixth subtask

fprintf("Definite int of (x + 1) / (sqrt(1 - x - x^2)) from pi / 7 to pi / 4:\n")
int((cos(2 * x) + sin(x)^2) / sin(3 * x), [pi / 7.0 pi /4])

# Seventh subtask

fprintf("Definite 2-nd int of x^2 * e^(x + sin(y)) * cos(y), x, 2.0, 1.0) from 1 to 2 by x and from 0 to 1 by y:\n")
int(int(x^2 * e^(x + sin(y)) * cos(y), x, [1.0 2.0]), y, [0.0 1.0])

# Eighth subtask

fprintf("Indefinite int of log(x) / x:\n")
int(log(x) / x)

# Ninth subtask

syms y(t)

fprintf("Solve of the 1-st diff equation:\n")
yx = dsolve(x^2 * diff(y, t, 2) + 3 * x * diff(y, t) + y == x^(-1), [y(1) == 1 diff(y, t)(1) == 0])

# fplot missin' https://github.com/cbm755/octsympy/issues/1032
figure;
ezplot(yx, [1 10]);
grid on;
title("Tenth subtask");
legend("y(t)");

# Tenth subtask

fprintf("Solve of the 2-nd diff equation:\n")
dsolve(diff(y, t) == e^(x + y) + e^(x - y))
