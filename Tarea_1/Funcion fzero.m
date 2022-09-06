#FUNCIÓN FZERO#


f = @(R)(1.129241*10^-3)+(2.341077*10^-3)*log(R)+(8.775468*10^-8)*(log(R))^3-(1/291.1); #Declaración de la ecuación para encontrar R
vi=[2 3];   #Declaración de los valores iniciales.

X = fzero(f,vi)   #Asignación del resultado que obtenga la función fzero que tiene como parametro la ecuación y los valores iniciales

fprintf("La aproximación de la raíz es: "); disp(X)   #Muestra el resultado
