clc 
clear

load count
[mSample, nColumn] = size(count);

x = count(:,1);
y = count(:,2);
z = count(:,3);

X = [ones(size(x,1),1),x];

#theta_LS = pinv(X)*y;

theta = [0,0];

[theta, J_hist] = gradientDescent(X, y , theta, 0.001, 1000);
plot(J_hist);

