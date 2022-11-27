function ranks = non_dominated_sorting(z)
    sz = size(z);
    n = sz(1);
    ranks = zeros(1,n);
    
    for rank = 1:n
        list = [];
        for i = 1:n
            if ranks(i) ~= 0
                continue
            end

            use = 1;
            for j = 1:n
                if ((i ~= j) && (ranks(j) == 0)) && compare(z(i,:), z(j,:))
                    use = 0;
                end
            end

            if use
                list = [list, i];
            end
        end
        
        if size(list) == [0, 0]
            break;
        end

        for i = list
            ranks(i) = rank;
        end
    end
end