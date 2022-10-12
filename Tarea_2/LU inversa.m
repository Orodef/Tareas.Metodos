#Método LU para inversa, norma y coeficientes#

A=[9 1.719 -14.643;
1.719 0.739 -2.798;
-14.643 -2.798 24.027];
b=[11.219;3.182;-17.723];
p=[1;0;0];
s=[0;1;0];
t=[0;0;1];
[L,U] = lu(A);
dp = L\p;
xp = U\dp;
ds = L\s;
xs = U\ds;
dt = L\t;
xt = U\dt;
Ai=zeros(3,3);
Ai(:,1)=[xp];
Ai(:,2)=[xs];
Ai(:,3)=[xt];
fprintf("La matriz inversa de A es: \n")
Ai
fprintf("La norma de la matriz A es: ")
nA=norm(A,Inf)
fprintf("La norma de la matriz inversa de A es: ")
nAi=norm(Ai,Inf)
condA=nA*nAi;
C=log(condA);
fprintf("La pérdida de cifras significativas es: ")
C
