close all;
clear;
a=imread('coins.png');
imhist(a);
b=a>100;
figure;imshow(b);
c=medfilt2(b,[5 5]);
figure;imshow(c);
[L num]=bwlabel(c);
disp(num);
text=strcat('No of coins=',num2str(num));
title(text);


