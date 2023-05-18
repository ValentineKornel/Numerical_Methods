F = @(x) x.^3 + 7 .* x - 3;
%F = @(x) x.^2;
%x = -10:0.001:10;
a = 0;
b = 1;
eps = 0.01;
x = linspace(0, 1);
%plot(x, F(x));
x0 = (a + b) / 2;
while(abs(b - a) > eps && F(x0) ~= 0)
    if(F(x0) * F(a) < 0)
        b = x0;
    else
        a = x0;
    end
    x0 = (a + b) / 2;
end