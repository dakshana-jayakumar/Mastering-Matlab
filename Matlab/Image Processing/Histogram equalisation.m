a = imread('pout.tif');
b = imadjust(a);
c = histeq(a);
d = adapthisteq(a);

I=[a b c d];
imshow(I);
title("Original Image and Enhanced Images using imadjust, histeq, and adapthisteq")
