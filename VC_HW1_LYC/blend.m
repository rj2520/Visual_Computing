function res_img = blend(mask,img1,img2)
one_matrix = ones(size(mask));
res_img = mask.*img1 + (one_matrix - mask).*img2;
end