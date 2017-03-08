function [theta, J_hist] = gradientDescent2(X,y,alpha,nit)
  
  size_row = size(y, 1);
  size_col = size(X, 2);
  
  theta = zeros(size_col, 1);
  
  
  J_hist = zeros(nit, 1);
  
  for n=1:nit
     gradient = zeros(size_col, 1)
     error = X * theta - y;
     gradient = X' * error;
%     for i=1:size_col
%       for j=1:size_row
%         gradient(i) = gradient(i) + (X(j,:) * theta - y(j)) * X(j,i);
%       end
%     end
     theta = theta - alpha/size_row*gradient;
     J_hist(n) = ComputeCostFunction(X,y, theta);
  end
end
% theta(i) = 1/2n Sigma1-m(h(x(i))-y(i)) * x(i)