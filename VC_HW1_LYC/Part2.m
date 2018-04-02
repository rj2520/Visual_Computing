close all

for i = 1:5
    temp_img = ori_matrix{i};
    for j = 1:8
        temp_lap = ((temp_img - gua_matrix{i,j})+1)/2;
        lap_matrix{i,j} = temp_lap;
        temp_img = gua_matrix{i,j};
    end
end
%Making the Plot
for i = 1:5
    for j = 1:8
        subplot(5,8,(i-1)*8+j)
        imshow(lap_matrix{i,j})
    end
end





