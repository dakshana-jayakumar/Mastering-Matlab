a=imread('chess.png');
a=rgb2gray(a);
corners = detectMinEigenFeatures(a);
figure;
imshow(a);
hold on;
plot(corners);
