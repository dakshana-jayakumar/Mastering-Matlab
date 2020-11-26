close all;[filename, pathname] = uigetfile('*.*', 'Pick a MATLAB code file');
InputImage=imread(strcat(pathname,filename));%read the image
b=rgb2gray(InputImage); %Convert Gray
c=b< 20;%Thresholding
c=imcomplement(c);%cpmplementing the image for operations
BW5 = imfill(c,'holes');%morpholoigcal operatons
M = bwareaopen(BW5, 1000);
b=double(b);
Inew = b.*M;
a=double(InputImage);
Inewc = a.*repmat(M,[1,1,3]);
PreProcessedImage=uint8(Inewc);
imshow(PreProcessedImage);
PreProcessedImage = imadjust(PreProcessedImage,[0.3 0.7],[]);
Enhancedimage=imadd(PreProcessedImage,50);
Enhancedimage=rgb2gray(Enhancedimage);
FilterImage= medfilt2(Enhancedimage,[5 5]);%process median filter
FilterImage=FilterImage> 250;
se = strel('line',1,5);
FilterImage = imdilate(FilterImage,se);
%Calculating the size of the Image
[r c p]=size(FilterImage);
bb=[300 258 200 60];
col=[c/3  c/3  (c/3+40)  (c/3+40)];
row=[(r/2+20) 480 480 (r/2+20)];
BW = roipoly(FilterImage,row,col);       % Select region of interest
Inews = FilterImage.*BW;% figure, imshow(BW)
M = bwareaopen(Inews, 4);
figure;
imshow(M)
[L num] = bwlabel(Inews,4)
if num >= 1
    disp('Stone Detected');
else
    disp('Stone Not Detected');
end


