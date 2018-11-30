I = imread('lena_noisy.pgm');
[row,col] = size(I);
ws = 3;
for i = 2:row-1
    for j = 2:col-1
        flag = 0;
        for p = -1*floor(ws/2):floor(ws/2)
            for q = -1*floor(ws/2):floor(ws/2)
                O(p+ceil(ws/2),q+ceil(ws/2)) = double(I(p+i,q+j));
                if (O(p+ceil(ws/2),q+ceil(ws/2))~=0 | O(p+ceil(ws/2),q+ceil(ws/2))~=255)
                    flag = 1;
                end
            end
        end
        if (flag == 0 && ws<=39)
            ws = ws+1;
            i=i-1;
            j = j-1;
        else
            ws = 3;
        end
        A = mean(O(:));
        I(i,j) = A;
    end
end
imshow(uint8(I));
        