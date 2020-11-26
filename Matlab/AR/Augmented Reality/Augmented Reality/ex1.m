clear; clc;
camObj = webcam(4);
video = vision.VideoFileReader('DEMO.mp4',...
     'VideoOutputDataType','uint8');
 
boxImage = imread('test.bmp');
%figure;imshow(boxImage);
boxImage=rgb2gray(boxImage);
figure;
while(1)
sceneImage1 = snapshot(camObj);
%figure;imshow(sceneImage1);
sceneImage=rgb2gray(sceneImage1);
boxPoints = detectSURFFeatures(boxImage);
scenePoints = detectSURFFeatures(sceneImage);
[boxFeatures, boxPoints] = extractFeatures(boxImage, boxPoints);
[sceneFeatures, scenePoints] = extractFeatures(sceneImage, scenePoints);
boxPairs = matchFeatures(boxFeatures, sceneFeatures);

matchedBoxPoints = boxPoints(boxPairs(:, 1), :);
matchedScenePoints = scenePoints(boxPairs(:, 2), :);
   %figure; showMatchedFeatures(sceneImage1,boxImage,matchedBoxPoints,matchedScenePoints,'montage');

 len=length(matchedScenePoints);
if len >5
    [referenceTransform, inlierBoxPoints, inlierScenePoints] = ...
            estimateGeometricTransform(matchedBoxPoints, matchedScenePoints, 'affine');
   % Capture the Video Frame
        videoFrame = step(video);
        repDims=size(videoFrame(:,:,1));
        refDims=size(boxImage);
        [rr cc]=size(boxImage);
% Resize to  Target Image
        videoFrameScaled=imresize(videoFrame,[rr cc]);
 %               figure;imshow(videoFrameScaled);

        % refdims is the size of the target image, repdims is the size of the Marketing video
scaleTransform = findScaleTransform(refDims,repDims);
outputView = imref2d(size(boxImage));
 outputView = imref2d(size(sceneImage));
videoFrameTransformed = imwarp(videoFrameScaled, referenceTransform, 'OutputView', outputView);

  %      figure;imshow(videoFrameTransformed);

alphaBlender = vision.AlphaBlender('Operation', 'Binary mask', 'MaskSource', 'Input port');
        
        mask=videoFrameTransformed(:,:,1)|...
        videoFrameTransformed(:,:,2)|...
        videoFrameTransformed(:,:,3)>0;
      %  figure;imshow(mask);

    
        outputFrame=step(alphaBlender,sceneImage1,videoFrameTransformed,mask);
   % figure;imshow(outputFrame);
    boxPolygon = [1, 1;...                           % top-left
                size(boxImage, 2), 1;...                 % top-right
                size(boxImage, 2), size(boxImage, 1);... % bottom-right
                1, size(boxImage, 1);...                 % bottom-left
                1, 1];                   % top-left again to close the polygon
 
        newBoxPolygon = transformPointsForward(referenceTransform, boxPolygon);
        
        d='Object Recognized'
        currFrame=outputFrame;
        position = [321 430];    
        box_color = {'yellow'};
        RGB = insertText(currFrame,position,d,'FontSize',22,'BoxColor', box_color,'BoxOpacity',0.9);
             imshow(RGB);
            hold on;
        line(newBoxPolygon(:, 1), newBoxPolygon(:, 2), 'Color', 'y');
        title('Augmented Reality using Matlab');
else
     d='Object Not Recognized'
        currFrame=sceneImage1;
        position = [321 430];    
        box_color = {'red'};
        RGB = insertText(currFrame,position,d,'FontSize',22,'BoxColor',   box_color,'BoxOpacity',0.9);
             imshow(RGB);     
        title('Augmented Reality using Matlab');
    
      
    
end
end
    
disp('Stop');