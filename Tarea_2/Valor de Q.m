#Modelo de potencias para encontrar Q a diferentes S#


function Q = modelo(S)
  D = 2.0;
  Q = 109572.104*(D^2.5380)*(S^2.6293);
 end

fprintf("Para S = 0.001: \n");
Q = modelo(0.001)

fprintf("Para S = 0.015: \n");
Q = modelo(0.015)

fprintf("Para S = 0.02: \n");
Q = modelo(0.02)

fprintf("Para S = 0.025: \n");
Q = modelo(0.025)

fprintf("Para S = 0.03: \n");
Q = modelo(0.03)

fprintf("Para S = 0.035: \n");
Q = modelo(0.035)

fprintf("Para S = 0.04: \n");
Q = modelo(0.04)
