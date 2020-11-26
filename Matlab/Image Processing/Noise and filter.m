a=imread('cameraman.tif');
J = imnoise(a,'salt & pepper', 0.20);
k=medfilt2(J,[5 5]);
figure;
subplot(1,3,1);imshow(a);
subplot(1,3,2);imshow(J);
subplot(1,3,3);imshow(k);

