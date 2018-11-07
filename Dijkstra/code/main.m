function [] = main()
% lecture des donnees
A = input('entrez la matrice A:\n');
s = input('entrez le element s:\n');
d = input('entrez le element d:\n');

[x,y] = dijkstra(A,s,d);
disp('le cout du chemin le plus court');
disp(x);
disp('le chemin le plus court');
for i =1:size(y)
    fprintf('sommet : %d <- ',y);
end
end
