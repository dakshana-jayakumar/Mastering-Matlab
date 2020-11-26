clc;
clear;
camObj = webcam(2);
figure;
while(1)
    
     img1 = snapshot(camObj);
     [r g b]=imsplit(img1);
        R = imnoise(r,'salt & pepper', 0.12);
        G = imnoise(g,'salt & pepper', 0.12);
        B = imnoise(b,'salt & pepper', 0.12);
        
        Imgn(:,:,1)=R;
        Imgn(:,:,2)=G;
        Imgn(:,:,3)=B;
         I=[img1 Imgn];
        imshow(I);


end
