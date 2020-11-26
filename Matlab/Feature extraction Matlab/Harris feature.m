clc;clear;
a=imread('chess.png');
a=rgb2gray(a);
figure;
imshow(a);
hold on
points=detectHarrisFeatures(a);
plot(points);
