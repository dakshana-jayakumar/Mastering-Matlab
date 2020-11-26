clc;clear;close all;
vidObj = VideoReader('xylophone.mp4');
disp(vidObj);
NumFrames= vidObj.NumFrames;
FrameRate=vidObj.FrameRate;
h=axes;
while hasFrame(vidObj)
      vidFrame = readFrame(vidObj);
      image(vidFrame,'Parent',h);
      h.Visible='off';
      pause(1/FrameRate);
end
