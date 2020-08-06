clc;
clear all;

N = 10000;
mu = [730, 1090]
sigma1 = [8000 0;0 8000];

X = randn(N, 2);
Y = X * sqrtm(sigma1) + repmat(mu, N, 1);

Y(1:10, :)
scatter(Y(1:500,1), Y(1:500,2));
grid on
axis tight