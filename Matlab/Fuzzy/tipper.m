clc;clear; 
%Tip-0-10 cheap; %tip average 10-20;%tipgenereous 20-30
fis = readfis('tipper');
service=5;
food=9;
tip=evalfis(fis,[service,food]);
tip=round(tip);
disp(tip);
if tip <= 10
    disp('cheap');
elseif tip >10 && tip <20
    disp('good');
    
else
    disp('genereous');
end