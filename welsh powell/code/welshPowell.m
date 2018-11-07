function [] = welshPowell()

% declaration de notre matrice d etude
A =[0 1 1 1 0 1 0 0 1 0 0 0 1 0 0 1 0; %A1
    1 0 1 0 1 0 1 0 0 1 0 0 0 1 0 0 0; %A2
    1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0; %A3
    1 0 0 0 1 1 0 0 1 0 0 0 1 0 0 1 0; %B1
    0 1 0 1 0 0 1 0 0 1 0 0 0 1 0 0 0; %B2
    1 0 0 1 0 0 1 1 0 0 0 0 1 0 0 1 0; %C1
    0 1 0 0 1 1 0 1 0 1 0 0 0 1 0 0 0; %C2
    0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 1; %C4
    1 0 0 1 0 1 0 0 0 1 0 0 1 0 0 1 0; %D1
    0 1 0 0 1 0 1 0 1 0 0 0 0 1 0 0 0; %D2
    0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0; %E3
    0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0; %E5
    1 0 0 1 0 1 0 0 1 0 0 0 0 0 0 1 0; %F1
    0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 0; %G2
    0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0; %G5
    1 0 0 1 0 1 0 0 1 0 0 0 1 0 0 0 1; %H1
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0]; %H4
%declaration du vecteur color
color = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
%l appel de la fonction qui calcule le degre
[order,d] = countd(A);
%declaration du vecteur qu'on va utiliser pour remplir le vecteur de couleurs
vectC = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
for i = 1:17
    o = order(i);
    for j = 1:17
        if (A(o,j) == 1) && (color(j) ~= 0)
            vectC(color(j)) = 1;
        end
    end
    k = 1;
    while color(o) == 0 && k <18
        if vectC(k) == 0;
            color(o) = k;
        end
        k = k+1;
    end    
end
%affichage
printWP(d,color);
end

%main


%basta mohammed
%Recherche operationnelle
%master ds fssm