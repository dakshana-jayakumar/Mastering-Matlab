clc;
clear;
 camObj = webcam(4);
% Preview a stream of image frames.
  preview(camObj);
  while(1)
 % Acquire and display a single image frame.
    img = snapshot(camObj);
    ocrResults   = ocr(img);
    clc;
    disp(ocrResults.Text);
   
  
  end
