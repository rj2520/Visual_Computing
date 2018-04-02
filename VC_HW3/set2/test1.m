%{
A = [1390 1477 1659 2064 2027 2383 2338 2406 2535 1591 2002 2302; 
    842 1051 942 1215 1054 541 396 354 681 588 998 547; 
    1436 1496 1720 1931 2001 2179 2152 2260 2294 1571 1898 2119; 
    547 771 728 1048 902 370 216 187 545 320 814 371];
[m,n] = size(A);
mtr1 = cell2mat(set1_cali_matrix(1));
mtr2 = cell2mat(set1_cali_matrix(2));
X = zeros(1,n);
Y = zeros(1,n);
Z = zeros(1,n);
for i = 1:n
    [tempx,tempy,tempz] = find_3Dpoints(mtr1, mtr2,[A(1,i),A(2,i)],[A(3,i),A(4,i)]);
    X(i) = tempx;
    Y(i) = tempy;
    Z(i) = tempz;
end
figure
scatter3(X(:),Y(:),Z(:))
%}
close all
clc

load('set1_cali_matrix.mat');
load('set2_cali_matrix.mat');
mtr1 = cell2mat(set1_cali_matrix(1));
mtr2 = cell2mat(set1_cali_matrix(2));
mtr3 = cell2mat(set2_cali_matrix(3));
mtr4 = cell2mat(set2_cali_matrix(4));

[in_1, r_1, t_1] = cali_decompose(mtr1);
[in_2, r_2, t_2] = cali_decompose(mtr2);
[in_3, r_3, t_3] = cali_decompose(mtr3);
[in_4, r_4, t_4] = cali_decompose(mtr4);

a = linspace(0,10,10);
cor_test = zeros([30,3]);
cor_test(1:10,1) = a;
cor_test(11:20,2) = a;
cor_test(21:30,3) = a;

cor_test2 = cor_test*r_1;
cor_test3 = zeros(30,3);
cor_test3(:,1) = cor_test2(:,1)+150;
cor_test3(:,2) = cor_test2(:,2)-50;
cor_test3(:,3) = cor_test2(:,3)+100;
figure
plot3(cor_test(:,1), cor_test(:,2), cor_test(:,3))
hold on
plot3(cor_test2(:,1), cor_test2(:,2), cor_test2(:,3),'r') 
hold on
plot3(cor_test3(:,1), cor_test3(:,2), cor_test3(:,3),'r') 








