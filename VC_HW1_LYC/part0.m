%Part 0. Getting Started
%{
%Phase the image:
filename = 'miata.jpg';
I = imread(filename);
J = im2double(rgb2gray(I));
A = imresize(J,[100 100]);
clear I, clear J;
%a.
x = sort(reshape(A,[1, 100*100]));
figure
plot(x)
title('part 0')

%b.
figure
hist(A,32);

%c.
threshold = 0.3; %range 0-1
A1 = A;
A1(A1 > threshold) = 1;
A1(A1 <= threshold) = 0;
figure
imshow(A1);

%d.
mean_value = mean(mean(A));
A2 = A;
A2 = A2 - mean_value;
A2(A2 < 0) = 0;
figure
imshow(A2);

%e.
y = 1:8;
s = reshape(y,[4,2]);

%f.
A3 = A(1:2:end,1:2:end);

%g & h
H = fspecial('gaussian');
A4 = imfilter(A,H);
A5 = conv2(A,H);

figure
imshow(A4)
figure
imshow(A5)
%}