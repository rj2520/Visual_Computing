function [fundmentalMatrices1, fundmentalMatrices2, epipoles1, epipoles2] = part3(matchedSifts)
    set1Filenames = loadFiles('set1\');
    set2Filenames = loadFiles('set2\');
    set1PairSize = length(set1Filenames) / 2;
    set2PairSize = length(set2Filenames) / 2;
    fundmentalMatrices1 = cell(set1PairSize, 1);
    fundmentalMatrices2 = cell(set2PairSize, 1);
    epipoles1 = cell(set1PairSize, 2);
    epipoles2 = cell(set2PairSize, 2);
    
    for i = 1:set1PairSize
        x1 = matchedSifts{1, i}(1, :);
        y1 = matchedSifts{1, i}(2, :);
        x2 = matchedSifts{1, i}(5, :);
        y2 = matchedSifts{1, i}(6, :);
        points1 = [x1 ; y1 ; ones(1, length(x1))];
        points2 = [x2 ; y2 ; ones(1, length(x2))];
        [normalizedPoints1, ~] = normalise2dpts(points1);
        [normalizedPoints2, ~] = normalise2dpts(points2);
        [fundmentalMatrices1{i, 1}, epipoles1{i, 1}, epipoles1{i, 2}] = fundmatrix(normalizedPoints1, normalizedPoints2);
    end
    
    for i = 1:set2PairSize
        x1 = matchedSifts{2, i}(1, :);
        y1 = matchedSifts{2, i}(2, :);
        x2 = matchedSifts{2, i}(5, :);
        y2 = matchedSifts{2, i}(6, :);
        points1 = [x1 ; y1 ; ones(1, length(x1))];
        points2 = [x2 ; y2 ; ones(1, length(x2))];
        [normalizedPoints1, ~] = normalise2dpts(points1);
        [normalizedPoints2, ~] = normalise2dpts(points2);
        [fundmentalMatrices2{i, 1}, epipoles2{i, 1}, epipoles2{i, 2}] = fundmatrix(normalizedPoints1, normalizedPoints2);
    end
end