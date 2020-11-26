clc;clear;close all;
vidObj = VideoReader('xylophone.mp4');
disp(vidObj);
NumFrames=vidObj.NumFrames;
FrameRate=vidObj.FrameRate;
figure;
for i=1:NumFrames
      vidFrame = read(vidObj, i);
      vidFrame=rgb2gray(vidFrame);
      vidFrame=imresize(vidFrame,[480 640]);
      imshow(vidFrame);
      pause(1/FrameRate);
  
end