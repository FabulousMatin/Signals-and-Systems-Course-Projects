function[n, labeled_pic] = mysegmentation(pic)
    parts = detect_parts(pic, 1);
    labeled_pic = zeros(size(pic));
    n = numel(parts);
    for i = n:-1:1
        part = parts{i};
        for j = 1:size(part,1)
            labeled_pic(part(j,1),part(j,2)) = i;
        end
    end
end