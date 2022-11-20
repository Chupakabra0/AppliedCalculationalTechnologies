![banner](https://i.imgur.com/9joEFPR.jpg)

## Лабораторная работа № 1

### Постановка задачи

Установить математический пакет MATLAB, настроить среду разработки и выполнить 2 обучающих задания, которые указаны в методических указаниях.

### Выполнение работы

#### Установка интерпретатора и среды

В качестве бесплатной альтернативы MATLAB воспользуемся интерпретатором-аналогом [GNU Octave](https://www.octave.org/). Octave представляет интерактивный командный интерфейс для решения линейных и нелинейных математических задач, а также проведения других численных экспериментов. Кроме того, Octave можно использовать для пакетной обработки, а его высокоуровневый язык полностью совместим с MATLAB.

Скачаем установочную версию Octave для Windows с официального сайта проекта:

![site|center](https://i.imgur.com/6WFMKUg.png)

И установим её на компьютер:

![installer|center](https://i.imgur.com/Z1Pgvqt.png)

Добавим путь к исполняемому файлу интерпретатора в системную переменную `PATH`. Напомню, что эта системная переменная содержит список директорий, в которых операционная система будет искать исполняемый файл при вызове команды.

Для этого через "Панель управления" найдём пункт "Изменение переменных среды для текущего пользователя" и впишем для текущего пользователя в `PATH` путь к интерпретатору Octave и интерпретаторам других языков, которые идут в комплекте с Octave (например, Perl или Python). В моём случае это выглядит так:

![path|center](https://i.imgur.com/pnTf9Nn.png)

В комплекте с консольным интерпретатором идёт среда разработки Octave, однако для большего удобства установим соответствующие расширения для Visual Studio Code, которые позволят форматировать, выполнять и отлаживать программы на Octave.

Нам пригодятся следующие расширения:

- [Octave](https://marketplace.visualstudio.com/items?itemName=toasty-technologies.octave) — для подсветки синтаксиса.
- [Octave Debugger](https://marketplace.visualstudio.com/items?itemName=paulosilva.vsc-octave-debugger) — для поддержки отладки.
- [Octave Execution](https://marketplace.visualstudio.com/items?itemName=LucasFA.octaveexecution ) — для удобного запуска программ.
- [Octave Formatter](https://marketplace.visualstudio.com/items?itemName=tusindfryd.octave-formatter) — для форматирования кода.

![extensions|center](https://i.imgur.com/f2lC9xV.png)

После проделанных процедур, файлы с расширением `.m` будут восприниматься как файлы-программ на языке программирования Octave. Они будут иметь специфическую для этого языка подсветку, их можно будет отлаживать и запускать через специальную кнопку с логотипом Octave, хотя и иконка файла всё равно будет оставаться стандартной.

Для проверки работы интерпретатора воспользуемся его консольным вариантом. Откроем консоль (в качестве консоли используется [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701?hl=ru-ru&gl=ru) и профиль стандартной `cmd`) и введём команду `octave`. Получим следующий вывод:

![](https://i.imgur.com/215LXuR.png)

Выполним некоторые обучающие действия, которые описаны в файле методичных рекомендаций. Наберём в командную строку выражение $A = 2 + 51 - 37$. Octave выдаст правильный ответ:

![](https://i.imgur.com/CPFqnpV.png)

Воспользуемся командой `clc` для очистки консоли (аналог `cls` в консоли Windows или `clear` в терминале Linux):

![](https://i.imgur.com/U495t5N.png)

Следует отметить, что интерпретатор запоминает значения ранее введённых переменных. Очевидно, если ввести в консоль название переменной `A`, то выведет её ранее вычисленное значение:

![](https://i.imgur.com/V6SM3oY.png)

Перейдём в Visual Studio Code и создадим папку и в ней файл `test.m`, в котором разместим код, который в свою очередь размещён на официальном сайте GNU Octave в секции "Примеры синтаксиса":

```matlab
x = -10: 0.1 :10; # Create an evenly-spaced vector from -10..10
y = sin(x);       # y is also a vector
plot(x, y);
title("Simple 2D Plot");
xlabel("x");
ylabel("sin (x)");
```

Программа создаст создаст следующее окно:

![plot|center](https://i.imgur.com/4EcnWxz.png)

#### Выполнение задания №1

Код для выполнения задания №1:

```matlab
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

fprintf("A * X = C => Vector X:\n")
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
```

Полученные графики в результате выполнения программы:

![plot1|center](https://i.imgur.com/ZbGyJCZ.png)

![plot2|center](https://i.imgur.com/HfUYyjK.png)

![plot3|center](https://i.imgur.com/HmBKZiR.png)

#### Выполнение задания №2

Для выполнения большей части подзадач используется пакет символьной математики для Octave, который необходимо явно подключить к программе при помощи команды `pkg load symbolic`. Для его корректной работы необходимо проверить то, что интерпретатор языков Perl и Python находятся в переменной `PATH`.

Также для работы пакета `symbolic` необходимо установить пакет `sympy`. Для этого необходимо в консоли ввести команду `pip3 install sympy`. Проверим работоспособность пакета символьной математики при помощи консольного интерпретатора Octave:

![example|center](https://i.imgur.com/cDm13qM.png)

Выше мы нашли производную функции $f(x) = x^{2}$ по $x$, которая, очевидно, равна $\frac{df(x)}{dx} = 2x$, что и подтверждают расчёты, которые изображены на скриншоте выше. 

Код для выполнения задания №2:

```matlab
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
```

### Выводы

- Был установлен аналог математического пакета MATLAB — GNU Octave.
- Была настроена среда разработки, проверен интерпретатор на работоспособность.
- Были изучены базовые функции математического пакета GNU Octave.
- Были написаны две программы для решения различного рода математических задач таких, как решение системы линейных алгебраических уравнений, поиск пределов, интегралов и производных, построение двухмерных и трёхмерных графиков функций и поверхностей и так далее.
