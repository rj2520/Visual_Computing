clear edge_matrix;
close all;

threshold = 0.25;
edge_kernal = [-1/8, -1/8, -1/8;
               -1/8, 1, -1/8;
               -1/8, -1/8, -1/8];


for i = 1:5
    for j = 1:8
        [edge_pyrmid, res_edge] = pyrmid2(edge_kernal,gua_matrix{i,j});
        res_edge(res_edge > 0) = 1 ; res_edge(res_edge < 0) = 0;
        zero_img = zero_crossing(res_edge);
        temp_edge_m = edge_detection(zero_img, threshold);
        edge_matrix{i,j} = temp_edge_m;
    end
end

for i = 1:5
    for j = 1:8
        subplot(5,8,(i-1)*8+j)
        imshow(edge_matrix{i,j})
    end
end


