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



N = 1000
a = 0;
for i = 1 : N
    a = a + Rcirc(i, 1)^2;
end
a = a /N;

b = 0;
for i = 1 : N
    b = b + Rcirc(i, 1) * Rcirc(i, 2);
end
b = b /N;

c = 0;
for i = 1 : N
    c = c + Rcirc(i, 2)^2;
end

c = c / N;
C = [a b;b c]

[EigenVector, EigenValue] = eig(C)