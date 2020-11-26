% Simple Wavelet based Image Fusion 
clc;
clear;
close all;
A = imread('ct.jpg');
B = imread('mri.jpg');
%%%%%%%%%%%%%%%%%%%%%% one level wavelet decomposition
[LL1 LH1 HL1 HH1]=dwt2(A,'haar');
[LL2 LH2 HL2 HH2]=dwt2(B,'haar');

Dec1=[LL1,LH1;HL1,HH1];
Dec2=[LL2,LH2;HL2,HH2];

figure;
subplot(1,2,1);imshow(Dec1,[]);title('IMAGE 1');
subplot(1,2,2);imshow(Dec2,[]);title('IMAGE 2');

M1=double(Dec1);
M2=double(Dec2);

FusedWavelet = average(M1,M2);

% sX=size(FusedWavelet);
[r c]=size(FusedWavelet);
CA = FusedWavelet(1:(r/2), 1:(r/2));%LLH3
CH = FusedWavelet(1:(r/2), (r/2 + 1):r);%LHL4
CV = FusedWavelet((r/2 + 1):r, 1:(r/2));%HLH3
CD = FusedWavelet((r/2 + 1):r, (r/2 + 1):r);%HHH3

RB= idwt2(CA,CH,CV,CD,'haar') ;
     
figure;
subplot(1,3,1);imshow(A);title('CT');
subplot(1,3,2);imshow(B);title('MRI');
subplot(1,3,3);imshow(RB,[]);title('Fused');


        
   