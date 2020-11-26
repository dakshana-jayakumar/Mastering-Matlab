a=imread('chess.png');
a=rgb2gray(a);
corners = detectFASTFeatures(a);
figure;
imshow(a);
hold on
plot(corners);
