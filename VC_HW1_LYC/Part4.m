mask1 = [zeros([256,128]),ones([256,128])];
mask2 = [zeros([100,256]);ones([156,256])];
mask3 = triu(ones(256,256));
%mask2 = zeros([256,256]); mask2(1:2:end,1:2:end) = 1;
kernal = [[1/4,1/4];[1/4,1/4]];
for i = 1:5
  [mask1, gua_mask1] = pyrmid(kernal,mask1);
  [mask2, gua_mask2] = pyrmid(kernal,mask2);
  [mask3, gua_mask3] = pyrmid(kernal,mask3);
  
end

blend_img1 = blend(gua_mask1,lap_matrix{1,3},lap_matrix{5,3});
blend_img2 = blend(gua_mask2,lap_matrix{1,3},lap_matrix{5,3});
blend_img3 = blend(gua_mask3,lap_matrix{1,3},lap_matrix{5,3});


%Making the Plot
figure
subplot(2,2,1)
imshow(lap_matrix{1,3})
subplot(2,2,2)
imshow(lap_matrix{5,3})
subplot(2,2,3)
imshow(gua_mask1)
subplot(2,2,4)
imshow(blend_img1)

figure
subplot(2,2,1)
imshow(lap_matrix{1,3})
subplot(2,2,2)
imshow(lap_matrix{5,3})
subplot(2,2,3)
imshow(gua_mask2)
subplot(2,2,4)
imshow(blend_img2)

figure
subplot(2,2,1)
imshow(lap_matrix{1,3})
subplot(2,2,2)
imshow(lap_matrix{5,3})
subplot(2,2,3)
imshow(gua_mask3)
subplot(2,2,4)
imshow(blend_img3)

