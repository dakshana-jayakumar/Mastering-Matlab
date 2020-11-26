clc;
clear;
close all;
 camObj = webcam(2);
 while(1)
    
     img1 = snapshot(camObj);
     img =rgb2gray(img1);
     img=edge(img,'canny');
     img=(img)*255;
     imge(:,:,1)=img;
     imge(:,:,2)=img;
     imge(:,:,3)=img;
     I=[img1 imge];
     imshow(I);
 end
             
       
 