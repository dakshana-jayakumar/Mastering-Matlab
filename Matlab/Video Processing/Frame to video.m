clc;
clear;close all;
vidObj = VideoWriter('peaks.mp4','MPEG-4');
open(vidObj);
h=axes;
for i=1:141;
    filename=strcat(num2str(i),'.bmp');
    a=imread(filename);
    image(a,'Parent',h);
    h.Visible='off'
    pause(1/30);
    currFrame = getframe(gca);
    writeVideo(vidObj,currFrame);
end
close(vidObj);
