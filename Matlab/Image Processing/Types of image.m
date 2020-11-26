clear;
close all;
a=imread('rose.png');
b=rgb2gray(a);
c=im2bw(b);
figure;
subplot(1,3,1);imshow(a);
subplot(1,3,2);imshow(b);
subplot(1,3,3);imshow(c);
impixelinfo;


