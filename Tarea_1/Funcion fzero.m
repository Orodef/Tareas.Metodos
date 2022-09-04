#FUNCIÓN FZERO#


f = @(R)(1.129241*10^-3)+(2.341077*10^-3)*log(R)+(8.775468*10^-8)*(log(R))^3-(1/291.1);
vi=[2 3];

X = fzero(f,vi)

fprintf("La aproximación de la raíz es: "); disp(X)
