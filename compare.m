function result = compare(f1, f2) %return whether f1 is dominated by f2
    result = 1;
    sz = size(f1);
    n = sz(2);

    for i = 1:n
        if f2(i) > f1(i)
            result = 0;
        end
    end

    if f1 == f2
        result = 0;
    end

end