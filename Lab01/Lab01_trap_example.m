f = @(x) sin(x);
a = 0;
b = 1;
N1 = 100;
N2 = 10;

S1 = trapezoidF(a,b,N1,f);
S2 = trapezoidF(a,b,N2,f);
S3 = integral(f,a,b);
tol = abs(S3 - S1);
tol_rel = tol / S3;

tol1 = abs(S3 - S2);
tol_rel1 = tol1/S3;

% h = (b - a) / N;
% sum = 0;
% 
% x = a;
% while(x < b)
%     sum = sum + (f(x) + f(x + h)) / 2 * h;
%     x = x + h;
% end

function sum = trapezoidF(a, b, N, f)
    h = (b - a) / N;
    sum = 0;

    x = a;
    while (x < b)
        sum = sum + (f(x) + f(x + h)) / 2 * h;
        x = x + h;
    end
end
