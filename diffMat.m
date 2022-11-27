function Z = diffMat(a,X)
    syms a1 a2 a3;
    x1 = X(:, 1);
    x2 = X(:, 2);
    x3 = X(:, 3);
    f = a1*(1-x1.*exp(-x2*a2)) + a3.^x3;
    P = [diff(f,a1) diff(f,a2) diff(f,a3)];
    Z = subs(P,{a3,a2,a1},{a(3),a(2),a(1)});
end