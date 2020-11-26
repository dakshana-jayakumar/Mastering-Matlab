I = imread('glass.png');
J = imcomplement(I);
figure, imshow(I), figure, imshow(J)
