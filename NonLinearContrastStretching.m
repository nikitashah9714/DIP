I = double(imread('low_cameraman.pgm'));
[row,col] = size(I);
M1 = min(I(:));
M2 = max(I(:));
for i = 1 : row
    for j = 1 : col
        O(i,j) = 255 * log(I(i,j)-M1+1)/log(255-0+1)+M1;
    end
end
imshow(uint8(O));