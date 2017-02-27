clc 
clear

load count
[mSample, nColumn] = size(count)

x = count(:,1)
y = count(:,2)
z = count(:,3)

X = [ones(size(x,1),1),x];

#theta = pinv(X)*y;
theta = [0,0];

%J = ComputeCostFunction(X, y, theta)

[theta, J_hist, minJ] = gradientDescent(X, y , theta, 0.0001, 50);
theta, minJ
plot(J_hist)