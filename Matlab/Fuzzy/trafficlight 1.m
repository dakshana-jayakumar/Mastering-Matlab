clc;clear;
fis=readfis('traffic.fis');
north=input('enter the north intensity-->');
south=input('enter the south intensity-->');
east=input('enter the east intensity-->');
west=input('enter the west intensity-->');
y=evalfis(fis,[north south east west]);
y=y>0.5

[val index]=min(y);

switch index
    case 1 %north
        disp('North is green');
        disp('South is Red');
        disp('East is Red');
        disp('West is Red');
       
    case 2 % south
        disp('North is Red');
        disp('South is green');
        disp('East is Red');
        disp('West is Red');
    case 3 % east
        disp('North is Red');
        disp('South is Red');
        disp('East is green');
        disp('West is Red');
    case 4% west
        disp('North is Red');
        disp('South is Red');
        disp('East is Red');
        disp('West is green');
end

        



