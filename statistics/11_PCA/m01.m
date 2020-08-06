clc;
clear all;


R1 = rand(1000, 2);
figure;
plot(R1(:,1), R1(:,2), "r*");

grid
axis("square");
title("uniform distributed random vectors");
xlabel('x');
ylabel("y");