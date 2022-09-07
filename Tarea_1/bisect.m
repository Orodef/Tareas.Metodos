clear all
warning('off')
format longG
f_R=@(R) 1.129241e-3+2.341077e-3*log(R)+8.775468e-8*log(R).^3-1/(291.1);



 function [root,fx,ea,iter]=bisect(func,xl,xu,es,maxit,varargin)
# bisect: root location zeroes
# [root,fx,ea,iter]=bisect(func,xl,xu,es,maxit,p1,p2,...):
# uses bisection method to find the root of func
# input:
# func = name of function
# xl, xu = lower and upper guesses
# es = desired relative error (default = 0.0001%)
# maxit = maximum allowable iterations (default = 50)
# p1,p2,... = additional parameters used by func
# output:
# root = real root
# fx = function value at root
# ea = approximate relative error (%)
# iter = number of iterations
if nargin<3,error('at least 3 input arguments required'),end  #Verifica que haya los 3 argumentos mínimos
test = func(xl,varargin{:})*func(xu,varargin{:});             #Calcula test, siendo la función evaluada en xl y xu 
if test>0,error('no sign change'),end                         #Verifica cambio de signo
if nargin<4|| isempty(es), es=0.0001;end                      #Si no es especifica error aprox., se asume 0.0001%
if nargin<5|| isempty(maxit), maxit=50;end                    #Si no es especifica num. de iteraciones, se asumen 50

iter = 0; xr = xl; ea = 100;                                  #Define valore iniciales de ietraciones, xr y error aprox

while (1)
  xrold = xr;                                                 #Redefine el xr anterior
  xr = (xl + xu)/2;                                           #Calcula el nuevo xr
  iter = iter + 1;                                            #Cuenta la itearción actual
  if xr ~= 0,ea = abs((xr - xrold)/xr) * 100;end              #Si xr es diferente de 0, calcula el error aprox.
  test = func(xl,varargin{:})*func(xr,varargin{:});           #Recalcula test, siendo la función evaluada en xl y xu
  if test < 0                                                 #Si las evaluaciones son menores que 0
    xu = xr;                                                  #sobreescribe xu
  elseif test > 0                                             #Si las evaluaciones son mayores que 0
    xl = xr;                                                  #sobreescribe xl
  else
    ea = 0;                                                   #Si no el error aprox. es cero
  end
  if ea <= es || iter >= maxit,break,end                      #Si llega al número máx de iteraciones o se 
end
root = xr; fx = func(xr, varargin{:});

end

## Llamado de la función
#usando la función especificada (f_R)
fprintf("Raíz por método de bisección es: \n");
[R,fR,ea,iter]=bisect(f_R,2,3,0.0001,100)

