clc;clear;
load iris_dataset;
InputFeatures=irisInputs;
TargetClass=irisTargets;
net=patternnet(10);
% view(net);
net=train(net,InputFeatures,TargetClass);
view(net);
save net net