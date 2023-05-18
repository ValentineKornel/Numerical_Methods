
x = [5, 9.5, 11, 13, 15, 18, 22, 26, 29];
y = [0.5, 0.7, 1, 1.4, 1.6, 2, 2.4, 3, 3];
% plot(x, y);

% линейная
n = size(x, 2);
A = [n, sum(x); sum(x), sum(x.^2)];
a = inv(A) * [sum(y); sum(x.*y)];

f = @(x) a(1) + a(2) .* x;

subplot(2, 1, 1)
plot(x, y);

% квадратичная

B = [n, sum(x), sum(x.^2); sum(x), sum(x.^2), sum(x.^3); sum(x.^2), sum(x.^3), sum(x.^4)];
b = inv(B) * [sum(y);sum(x.*y);sum(x.^(2).*y)];

f1 = @(x) x.^2 .* b(3) + x .* b(2) + b(1);


subplot(2, 1, 2)
plot(x, f1(x), x, y);

