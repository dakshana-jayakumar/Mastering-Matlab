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
        
        R1=medfilt2(R,[3 3]);
        G1=medfilt2(G,[3 3]);
        B1=medfilt2(B,[3 3]);
      
        Imgn(:,:,1)=R;
        Imgn(:,:,2)=G;
        Imgn(:,:,3)=B;
        
        ImgF(:,:,1)=R1;
        ImgF(:,:,2)=G1;
        ImgF(:,:,3)=B1;
        I=[img1 Imgn ImgF];
        imshow(I);


end
