function [d_m, interp_m] = pyrmid(kernal, img)
[n,m] = size(kernal);
d_m = [];
[row, col] = size(img);
img_new = im2double(img);
for i = 1:n:row
    res = [];
    for j = 1:m:col
       pixel = sum(sum(kernal.*img_new(i:i+n-1,j:j+m-1)));
       res = [res,pixel];
    end
    d_m = [d_m; res];
end
interp_m = imresize(d_m, [256 256],'bilinear');


       
         
        

