clc;clear;close all; 
vidObj = VideoReader('xylophone.mp4');
NumFrames=vidObj.NumFrames;
str='.bmp';
for i=1:NumFrames
    filename=strcat(num2str(i),str);
    vidFrame = read(vidObj, i);
    imwrite(vidFrame,filename);
           
end
