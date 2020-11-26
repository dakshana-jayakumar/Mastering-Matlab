clear;
clc;
a=imread('cameraman.tif');
b=imadd(a,100);
figure;
subplot(1,2,1);imshow(a);
subplot(1,2,2);imshow(b);