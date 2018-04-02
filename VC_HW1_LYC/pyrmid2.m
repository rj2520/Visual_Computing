function [d_m, resize_m] = pyrmid2(kernal, img)
[n,m] = size(kernal);
d_m = [];
[row, col] = size(img);
img_new = im2double(img);
for i = 1:n:row
    if (i+n > row)
        continue;
    end
    res = [];
    for j = 1:m:col
       if (j + m > col)
           continue;
       end
       pixel = sum(sum(kernal.*img_new(i:i+n-1,j:j+m-1)));
       res = [res,pixel];
    end
    d_m = [d_m; res];
end
resize_m = imresize(d_m, [256 256], 'bilinear');
end

