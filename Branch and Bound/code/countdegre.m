function [orde,d] = countd(A)

%declaration et initialisation du vecteur degre de longueur 17 par des zero
d = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
%declaration et initialisation du vecteur order par une suite de numeros sequentiels de longueur 17
order = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17];
%boucle calcule le degre de chaque sommet 
for i = 1:17
    for j = 1:17
        if A(i,j) == 1
            d(i) = d(i) + 1;
        end
    end
end

%appel de la fonction qui fait le tri par rapport au degre
orde = sorted(order,degre);
end

%cette fonction calcul le degre de chaque sommet


%basta mohammed
%Recherche operationnelle
%master ds fssm