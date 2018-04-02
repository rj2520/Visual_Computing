clear all
close all
%{
test cases
twoD_points = [337, 1157;
               592, 1267;
               379, 961;
               616, 833;
               817, 674;
               571, 596];
threeD_points = [16, 16, 48;
                 48, 16, 48;
                 0.01, 48, 67;
                 32, 48, 67;
                 32, 48, 67;
                 0.01, 80, 67];
%}

twoD_points = [1034 1149;
 814 682;
 790 1062;
 666 1000;
 2427 986;
 2124 1266];
             
threeD_points = [64 64 29;
 32 80 67;
 48 48 48;
 32 48 48;
 180 180 0.01;
 160 120 0.01];

cali_matrix = find_cali_matrix(threeD_points, twoD_points)