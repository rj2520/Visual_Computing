%Name:Yuchun Liu
%Visual Computing: Assignment 1
clear all 
close all
clc

img_list = ["CARTOON.jpg", "flowergray.jpg","polarcities.jpg","text.jpg","kitty.jpg"];
kernal = [[1/4,1/4];[1/4,1/4]];

for i = 1:5
    img = imread(char(img_list(i)));
    temp_img = img;
    ori_matrix{i} = im2double(temp_img);
    for j = 1:8
        [temp_img, temp_int_img] = pyrmid(kernal, temp_img);
        gua_matrix{i,j} = temp_int_img;
    end
end

%plot
for i = 1:5
    for j = 1:8
        subplot(5,8,(i-1)*8+j)
        imshow(gua_matrix{i,j})
    end
end

%Laplacian


