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

% 1차원으로 축소하기 위해 두번째 성분을 0으로 설정.
y(2,:)=0;

%원 데이터 역변환
x = (y' * inv(pc)');

% 데이터 플로팅
figure;
scatter(y(1, :), y(2, :));
axis equal;

