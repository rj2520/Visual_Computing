function lap_img = get_blend(kernal, img_matrix)
[img1, level1] = pyrmid(kernal,img_matrix);
[img2, level2] = pyrmid(kernal, level1);
lap_img = ((level1 - level2)+1)/2;
end
