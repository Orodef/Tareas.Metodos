D = [0.8 1.8 2.6];
S = [0.01 0.015 0.02 0.025 0.03 0.035 0.04 0.045 0.05];

for i2=1:3
  for i1=1:9
    Q(i1,i2) = 109572.104*D(i2)^(2.5380)*S(i1)^(2.6293);
  endfor
endfor

#109572.104*D(i1)^(2.5380)*S(i2)^(2.6293)

surf(D,S,Q)
title("Q en función de S y D")
xlabel("D")
ylabel("S")
zlabel("Q")