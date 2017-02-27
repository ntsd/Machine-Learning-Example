function [theta, J_hist, minJ] = gradientDescent(X,y,theta,alpha,nit)
  m = size(y,1);
  J_hist = zeros(nit, 1);
  minJ = 0;
  for n=1:nit
     S = [0;0];
     S1 = 0;
     S2 = 0;
     for i=1:m
       S1=S1 + ((theta(1)*X(i,1) + theta(2)*X(i,2) - y(i))) * X(i,1);
       S2=S2 + ((theta(1)*X(i,2) + theta(2)*X(i,2) - y(i))) * X(i,2);
     end
     S = [S1;S2];
     theta = theta - alpha/m*S;
     J = ComputeCostFunction(X,y, theta);
     if J < minJ || minJ == 0
       minJ = J;
     end
     J_hist(n) = J;
  end
endfunction