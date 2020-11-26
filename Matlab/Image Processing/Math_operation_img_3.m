clear;
clc;
a=imread('cameraman.tif');
b=imread('rice.png');
b=imsubtract(a,b);
figure;
subplot(1,2,1);imshow(a);
subplot(1,2,2);imshow(b);