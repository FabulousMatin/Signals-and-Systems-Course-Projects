function[newSound] = p4_4(soundData, speed, sampleRate, play)

    if((speed == 0) || (mod(10*speed,1) ~= 0))
        error('wrong speed! the format must be x.y which x in [1,9] and y in [0,9]');
    end
    
    newLength = floor(length(soundData) / speed);
    newSound = zeros(1,newLength);
    for i = ceil(1/speed):newLength
        newSound(i) = (soundData(floor(speed * i)) + soundData(ceil(speed * i))) / 2;
    end
    if(play)
        sound(newSound, sampleRate);
    end
end