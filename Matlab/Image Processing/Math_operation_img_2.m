clear;
clc;
a=imread('cameraman.tif');
b1=imread('rice.png');
b=imadd(a,b1);
K = imlincomb(1,a,1,b1,'uint16');

figure;
subplot(1,3,1);imshow(a);
subplot(1,3,2);imshow(b,[]);
subplot(1,3,3);imshow(K,[]);