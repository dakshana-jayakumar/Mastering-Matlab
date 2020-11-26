clc;
businessCard = imread('businessCard.png');
ocrResults   = ocr(businessCard);
bboxes = locateText(ocrResults, 'MathWorks', 'IgnoreCase', true);
Iocr   = insertShape(businessCard, 'FilledRectangle', bboxes);
figure
imshow(Iocr)