clear all;
close all;
clc;

% 정규 분포를 따르는 2차원 데이터 생성
x(1, :) = randn(1, 100);
x(2, :) = randn(1, 100) *3;

% 타원 모양 분포를 약간 회전시키자
% 카티지안 좌표계를 극좌표계로 변환후 pi/3회전 후 다시 카티지안으로변환
[p(1, :), p(2,:) ] = cart2pol(x(1, :), x(2, :));
p(1, :) = p(1, :) - pi/3;
[x(1, :), x(2,:)] = pol2cart(p(1,:), p(2,:));


% 주성분 PC 찾기
[pc, latent, explained] = pcacov(cov(x'));

% 주성분을 축으로 데이터를 회전
y = (x' * pc)';

% 데이터 플로팅
figure;
scatter(y(1, :), y(2, :));
axis equal;

% 주성분 PC 찾기
[pc2, latent, explained] = pcacov(cov(y'));
% 데이터 상에 주성분 그림
hold on;
plot([-4 4] * pc2(1,1), [-4 4]*pc2(2,1), 'r-');
plot([-2 2]* pc2(1, 2), [-2 2] *pc(2, 2), 'g-');

