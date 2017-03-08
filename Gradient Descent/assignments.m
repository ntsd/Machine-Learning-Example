clc 
clear

load count

x = count(:,1);
y = count(:,2);

plot(x, y, "*");

X = [ones(size(x,1),1),x];

theta = [0,0];

[theta, J_hist] = gradientDescent(X, y , theta, 0.001, 100);
plot(J_hist);
