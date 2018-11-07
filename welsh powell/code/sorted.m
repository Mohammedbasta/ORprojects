function [order] = sorted(order,d)
    for i = 1:17
        j=17;
        while j > i && j > 0
            t = j-i;
            if d(order(j)) > d(order(t))
                t = order(j);
                order(j) = order(j-i);
                order(j-i) = t;
            end
            j = j - 1;
        end
    end
end

%cette fonction fait le tri des sommets par rapport a leurs degres


%basta mohammed
%Recherche operationnelle
%master ds fssm