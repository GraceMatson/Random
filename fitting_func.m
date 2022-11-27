function f = fitting_func(a,X)
    x1 = X(:, 1);
    x2 = X(:, 2);
    x3 = X(:, 3);
    f = a(1)*(1-x1.*exp(-x2*a(2))) + a(3)^x3;
end