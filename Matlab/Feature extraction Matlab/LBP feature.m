clc;clear;
bricks=imread('bricks.jpg');
rotatedbricks=imread('rotatedbricks.jpg');
carpet=imread('carpet.jpg');
figure;
subplot(1,3,1);imshow(bricks);
subplot(1,3,2);imshow(rotatedbricks);
subplot(1,3,3);imshow(carpet);
lbpbricks=extractLBPFeatures(bricks);
lbprotatedbricks=extractLBPFeatures(rotatedbricks);
lbpcarpet=extractLBPFeatures(carpet);
brickssim=(lbpbricks-lbprotatedbricks).^2;
brickscarpesim=(lbpbricks-lbpcarpet).^2;
figure;
bar([brickssim; brickscarpesim]', 'grouped')
title('Squared error of LBP Histograms')
xlabel('LBP Histogram Bins')
legend('Bricks vs Rotated Bricks', 'Bricks vs Carpet')



