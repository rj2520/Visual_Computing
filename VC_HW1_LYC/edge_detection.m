function res = edge_detection(matrix, threshold)
[r,c] = size(matrix);
res = zeros([r,c],'double');
for i = 1:r
    for j = 1:c
      if (i == 1 || i == r || j == 1 || j == c)
          res(i,j) = 1;
      else
          if (var(reshape(matrix(i-1:i+1,j-1:j+1),1,9)) >= threshold)
              res(i,j) = 1;
          else
              res(i,j) = 0;
          end
      end  
    end
end

end