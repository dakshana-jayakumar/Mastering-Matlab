a=imread('cameraman.tif');
[regions, mserCC] = detectMSERFeatures(a);
figure;imshow(a);
hold on;
plot(regions, 'showPixelList', true, 'showEllipses', false);

    