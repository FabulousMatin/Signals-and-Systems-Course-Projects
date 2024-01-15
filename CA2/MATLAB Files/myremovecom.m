function[filtered_pic] = myremovecom(pic, threshold)
    parts = detect_parts(pic, threshold);
    filtered_pic = zeros(size(pic));
    for i = 1:numel(parts)
        part = parts{i};
        for j = 1:size(part,1)
            filtered_pic(part(j,1),part(j,2)) = 1;
        end
    end
end
