function [a,b] = p2_4(x,y)
    a = sum((x - mean(x)) .* (y - mean(y))) / sum((x - mean(x)).^2);
    b = mean(y) - a * mean(x);
end

