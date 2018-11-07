function [r1, r2, r3] = bb(min, A, B, Aeq, Beq, lb, ub)

    global numv;
    flagInt = 1;

    [x, v] = linprog(min, A, B, Aeq, Beq, lb, ub);

    for i =  1:numv
        % condition sur les variables - entier -
        if ~isnan(v) && ~mod(x(i),1)
            flagInt = 0;
            varVal = floor(x(i));
            varIndex = i;
        end
    end

    % si les vars sont tous entiers
    if (flagInt == 1)
        if (isnan(v)) 
            r1 = NA;
            r2 = 1;
            r3 = inf;
        else
            r1 = x;
            r2 = 1;
            r3 = v;

            % l affichage en graphe
            update_graph(x, A, B, v);

        end
    else
        lb1 = lb;
        lb2 = lb;
        ub1 = ub;
        ub2 = ub;

        lb1(varIndex) = varVal+1;
        ub2(varIndex) = varVal;

        [x1, i1, v1] = bb(min, A, B, Aeq, Beq, lb1, ub1);
        [x2, i2, v2] = bb(min, A, B, Aeq, Beq, lb2, ub2);

        if (v1 < v2)
            r1 = x1;
            r2 = i1+i2;
            r3 = v1;
        else
            r1 = x2;
            r2 = i1+i2;
            r3 = v2;
        end
    end
    return;
end



%basta mohammed
%Recherche operationnelle
%master ds fssm