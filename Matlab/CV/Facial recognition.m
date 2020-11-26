clc;
clear
camObj = webcam(2);
I = snapshot(camObj);
faceDetector = vision.CascadeObjectDetector('FrontalFaceCART');
EyeDetector = vision.CascadeObjectDetector('EyePairBig'); % Default: finds faces
MouthDetector = vision.CascadeObjectDetector('Mouth'); % Default: finds faces
% Default: finds faces
% I = imread('visionteam.jpg');
bboxesface = step(faceDetector, I); % Detect faces
bboxeseye = step(EyeDetector, I); % Detect faces
bboxesMouth = step(MouthDetector, I); % Detect faces

% Annotate detected faces

IFaces = insertObjectAnnotation(I, 'rectangle', bboxesface, 'Face');
hold on;
IFaces = insertObjectAnnotation(IFaces, 'rectangle', bboxeseye, 'Eye');
hold on;
IFaces = insertObjectAnnotation(IFaces, 'rectangle', bboxesMouth, 'Mouth');
figure, imshow(IFaces), title('Detected faces');

