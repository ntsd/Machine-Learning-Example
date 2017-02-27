function J = ComputeCostFunction(X,y, theta)
  n= size(X,1);
  S=0;
  for i=1:n
    S = S + (theta(1) + theta(2) * X(i,2) - y(i))^2;
  end
  J = 1/(2*n)*S;
endfunction
