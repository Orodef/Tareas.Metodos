#Método LU#

A=[9 1.719 -14.643;
1.719 0.739 -2.798;
-14.643 -2.798 24.027];
b=[11.219;3.182;-17.723];
[L,U] = lu(A);
d = L\b;
x = U\d