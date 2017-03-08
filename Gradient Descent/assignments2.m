clc 
clear

Data = csvread('regression-datasets-housing-normalize.csv');

size_row = size(Data,1);
size_col = size(Data,2);
X=[ones(size_row, 1) Data(:,1:size_col-1)];
y=Data(:,14);
alpha= 0.1;
nit = 100;
[theta, J_hist] = gradientDescent2(X,y,alpha,nit);
plot(J_hist)


theta2 = pinv(X)*y;%Least Square