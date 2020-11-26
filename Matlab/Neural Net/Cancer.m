x = cancerInputs;
t = cancerTargets;
trainFcn = 'trainscg';  % Scaled conjugate gradient backpropagation.
hiddenLayerSize = 10;
net = patternnet(hiddenLayerSize, trainFcn);
% Train the Network
[net,tr] = train(net,x,t);
% Test the Network
y = net(x);
e = gsubtract(t,y);
performance = perform(net,t,y)
tind = vec2ind(t);
yind = vec2ind(y);
percentErrors = sum(tind ~= yind)/numel(tind);
% View the Network
view(net)
% Plots
figure, plotperform(tr)
figure, plottrainstate(tr)
figure, ploterrhist(e)
figure, plotconfusion(t,y)
figure, plotroc(t,y)

