X = [ones(size(x,1),1),x];
theta = ((X'*X)^-1)*X'*z; 
#theta = pinv(X)*z; #you can replace with this
trueTheta =[3.75 ; -1.15];
PHI = [ones(size(x)) x x.^2 x.^3 x.^4];
theta_phi = inv(PHI'*PHI)*PHI'*z

plot(x, X*theta, x, z, "*", x, PHI * theta_phi, x, X*trueTheta)
legend("LS","data", "TS", "true theta")