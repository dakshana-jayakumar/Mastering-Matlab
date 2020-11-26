clc;
clear;
FusedWaveletCoeff=magic(4);
[r c]=size(FusedWaveletCoeff);

CA = FusedWaveletCoeff(1:(r/2), 1:(r/2));%LLH3
CH = FusedWaveletCoeff(1:(r/2), (r/2 + 1):r);%LHL4
CV = FusedWaveletCoeff((r/2 + 1):r, 1:(r/2));%HLH3
CD = FusedWaveletCoeff((r/2 + 1):r, (r/2 + 1):r);%HHH3
