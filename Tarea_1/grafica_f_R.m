## Gráfica de f(R)

R = linspace(0,3, 1001);
f_R = 1.129241e-3 + 2.341033e-3*log(R) + 8.775468e-8*(log(R)).^3;
T_inv = 1/292.1

figure(1)
plot(R,f_R)
grid on

hold on
plot(R,T_inv, 'x')
hold off

title('Gráfica de f(R)')
xlabel('Resistencia (ohms)')
ylabel('Temperatura inversa (1/K)')