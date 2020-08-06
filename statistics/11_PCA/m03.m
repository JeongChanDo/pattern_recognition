clc;
clear all;


R1 = rand(1000, 2);


R1_mean = [mean(R1(:,1)), mean(R1(:,2))];
Rctr = [R1(:, 1) - R1_mean(:, 1) , R1(:,2) - R1_mean(:,2)];

for i = 1:1000
    
    if ((sqrt(Rctr(i, 1)^2 + Rctr(i, 2)^2)) > 0.5)
        for j = 1 : 2
            Rcirc(i, j ) =0;
        end
    else
        for j = 1 : 2
            Rcirc(i, j) = Rctr(i, j);
        end
    end
end

plot(Rcirc(:,1), Rcirc(:,2), "r*");

grid
axis("square");
title("uniform distributed random vectors의 원점을 0으로");
xlabel('x');
ylabel("y");