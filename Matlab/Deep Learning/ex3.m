clc;clear;
camObj = webcam(4);
net=alexnet()
while(1)
    img = snapshot(camObj);
    img=imresize(img,[227 227]);
    class=classify(net,img);
    class=char(class);
    imshow(img);title(class);
    clc;disp(class);
end