clc;
clear all;

N = 10000;
mu = [730, 1090]
sigma1 = [8000 0;0 18500];

X = randn(N, 2);
Y = X * sqrtm(sigma1) + repmat(mu, N, 1);

Y(1:10, :)
scatter(Y(1:1000,1), Y(1:1000,2));
grid on
axis equal