function y = eulerr(f , y0 , t )
% Y = eulerp (F,Y0 ,T)
% Calcule la solution approch �e Y du probl �me de Cauchy
%
% dY/dt = f(t,Y)
% Y(0) = Y0
%
% aux points T en utilisant la m� thode d' Euler r� trograde .
%
% arguments :
% F - la fonction de deux variables Y et t;
% t - un scalaire
% Y - la solution en t
% Y0 - condition initiale au point T(1)
% T - le vecteur des points o� la solution du probl �me de
% Cauchy doit � tre approch �e
% sortie :
% Y - solution approch �e du probl �me de Cauchy
  y (1) = y0 ;
  for i = 1: length ( t ) -1
    h = t( i +1) -t ( i );
    g = @( x ) y( i ) + f ( t( i +1) ,x ) * h - x ;
    y ( i +1) = fsolve (g , y ( i ) ) ;
  end
endfunction