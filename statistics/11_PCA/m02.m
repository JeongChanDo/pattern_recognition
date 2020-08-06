clc;
clear all;


R1 = rand(1000, 2);


R1_mean = [mean(R1(:,1)), mean(R1(:,2))];
Rctr = [R1(:, 1) - R1_mean(:, 1) , R1(:,2) - R1_mean(:,2)];
figure;
plot(Rctr(:,1), Rctr(:,2), "r*");


grid
axis("square");
title("uniform distributed random vectors의 원점을 0으로");
xlabel('x');
ylabel("y");