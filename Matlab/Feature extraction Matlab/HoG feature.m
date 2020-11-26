clc;clear;close all;
a=imread('4.bmp');
[hog1, visualization] = extractHOGFeatures(a,'CellSize',[2 2]);
figure;
imshow(a);
figure;
plot(visualization,'Color','Green');
