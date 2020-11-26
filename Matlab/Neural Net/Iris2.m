clear;
load net;
load iris_dataset;

InpValue=input('Choose the Feature->');
feature=irisInputs(:,InpValue);
Class=net(feature);
Class=vec2ind(Class);
disp(Class);