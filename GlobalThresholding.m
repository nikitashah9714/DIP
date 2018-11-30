I = double(imread('lena.pgm'));
[row,col] = size(I);
T = 150;
while(1)
    temp = T;
    for i = 1:row
        for j = 1:col
            up = 0;
            down = 0;
            if I(i,j)>=T
                up = up+1;
                high(up) = I(i,j);
            else
                down = down+1
                low(down) = I(i,j);
            end
        end
    end
    meanH = mean(high);
    meanL = mean(low);
    T = (meanH+meanL)/2;
    if T-temp<=0.5
        break;
    end
end
display(T);
for i = 1:row
    for j = 1:col
        if I(i,j)>=T
            Out(i,j) = 255;
        else
            Out(i,j) = 0;
        end
    end
end
imshow(uint8(Out));