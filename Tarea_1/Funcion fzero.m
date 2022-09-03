#FUNCIÓN FZERO#


f = @(R)(1.129241*10^-3)+((2.341077*10^-3)*log(R))+((8.775468*10^-3)*(log(R))^3);
vi=[2 3];

[X, FVAL] = fzero(f,2)

fprintf("La aproximación de la raíz es:",X);
