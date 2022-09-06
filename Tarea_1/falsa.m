clc
format longG
f_R=@(R)1.129241e-3 + 2.341033e-3*log(R) + 8.775468e-8*(log(R)).^3-1/(291.1);


 function [root,fx,ea,iter]=falseposition(func,xl,xu,es,maxit,varargin)
% bisect: root location zeroes
% [root,fx,ea,iter]=bisect(func,xl,xu,es,maxit,p1,p2,...):
% uses bisection method to find the root of func
% input:
% func = name of function
% xl, xu = lower and upper guesses
% es = desired relative error (default = 0.0001%)
% maxit = maximum allowable iterations (default = 50)
% p1,p2,... = additional parameters used by func
% output:
% root = real root
% fx = function value at root
% ea = approximate relative error (%)
% iter = number of iterations
if nargin<3,error('at least 3 input arguments required'),end
test = func(xl,varargin{:})*func(xu,varargin{:});
if test>0,error('no sign change'),end
if nargin<4|| isempty(es), es=0.0001;end
if nargin<5|| isempty(maxit), maxit=50;end
iter = 0; xr = xl; ea = 100;
while (1)
xrold = xr;
fl=func(xl,varargin{:});
fu=func(xu,varargin{:});

xr = xu-((fu*(xl-xu)/(fl-fu)));
iter = iter + 1;
if xr ~= 0,ea = abs((xr - xrold)/xr) * 100;end
test = fl*fu;
if test < 0
xu = xr;
elseif test > 0
xl = xr;
else
ea = 0;
end
if ea <= es || iter >= maxit,break,end
end
root = xr; fx = func(xr, varargin{:});

end


fprintf("La raíz por el método de falsa posición aproximada es:");
[x,fx,ea,iter]=falseposition(f_R,2,3,0.00001,100)
