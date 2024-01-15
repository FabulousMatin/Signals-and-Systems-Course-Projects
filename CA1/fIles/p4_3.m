function[newSound] = p4_3(soundData, speed, sampleRate, play)  

    if(speed == 2)
        newLength = round(length(soundData)/2);
        newSound = zeros(1,newLength);
        for i = 1:newLength
            newSound(i) = soundData(2 * i);
        end
        
    elseif(speed == 0.5)
        newLength = length(soundData) * 2;
        newSound = zeros(1,newLength);
        for i = 1+1:newLength-1
            if(mod(i,2) == 0)
                newSound(i) = soundData(i / 2);
            else
                newSound(i) = (soundData((i + 1) / 2) + soundData((i - 1) / 2)) / 2;
            end
        end
    
    elseif(speed == 1)
        newSound = soundData;
        
    else
        error('playSpeed must be 1 or 2 or 0.5!');
    end
    if(play)
        sound(soundData, sampleRate);
    end
end