
function[parts] = detect_parts(pic, threshold)
    height = size(pic,1);
    width = size(pic,2);
    parts = {};
    queue = [];
    pairs = [];
    while(true)
        if(isempty(queue))
            if(size(pairs,1) >= threshold)
                parts{end+1} = pairs;
            end
            pairs = [];
            [i,j] = find_any(pic);
            if(i == -1)
                break;
            end
            queue = [i,j];
            pic(i,j) = 0;
        else
            row = queue(1, 1);
            col = queue(1, 2);
            pairs = [pairs; queue(1, :)];
            queue(1, :) = [];
            if(row > 1 && pic(row - 1, col) == 1)
                pic(row - 1, col) = 0;
                queue = [queue;[row - 1, col]];
            end
            if(row < height && pic(row + 1, col) == 1)
                pic(row + 1, col) = 0;
                queue = [queue;[row + 1, col]];
            end
            if(col > 1 && pic(row, col - 1) == 1)
                pic(row, col - 1) = 0;
                queue = [queue;[row, col - 1]];
            end
            if(col < width && pic(row, col + 1) == 1)
                pic(row, col + 1) = 0;
                queue = [queue;[row, col + 1]];
            end 
            if(row > 1 && col > 1 && pic(row - 1, col - 1) == 1)
                pic(row - 1, col - 1) = 0;
                queue = [queue;[row - 1, col - 1]];
            end 
            if(row < height && col > 1 && pic(row + 1, col - 1) == 1)
                pic(row + 1, col - 1) = 0;
                queue = [queue;[row + 1, col - 1]];
            end
            if(row > 1 && col < width && pic(row - 1, col + 1) == 1)
                pic(row - 1, col + 1) = 0;
                queue = [queue;[row - 1, col + 1]];
            end
            if(row < height && col < width && pic(row + 1, col + 1) == 1)
                pic(row + 1, col + 1) = 0;
                queue = [queue;[row + 1, col + 1]];
            end
          
        end
        
    end
    
    pairs = [pairs;queue];
    if(size(pairs,1) > threshold)
        parts{end+1} = pairs;
    end  
end
