%pkg load optim

lb = [];
ub = [];
Aeq = [];
Beq = [];
pts = [];

% lecture des donnees
min = input('entrez les coeficients de la fonction a minimiser dans le vecteur:\n');
A = input('entrez les elements de la matrice A:\n');
B = input('entrez les elements du vecteur B:\n');

%assert (size(min,1) == size(A,2));
%assert (size(A,1) == size(B,1));

% Nombre des variables = nombre des coefficients en min
global numv 
numv = numel(min);

% Assume all variables >= 0
lb = zeros(numv, 1);
ub = inf*ones(numv, 1);

% appel de la fonction Branch&Bound
[x, i, v] = bb(min, A, B, Aeq, Beq, lb, ub);

disp('valeur des variables:\n')
disp(x)
disp('Iterations: ')
disp(i)
disp('valeur de la solution optimale: ')
disp(v)

