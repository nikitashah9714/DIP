I = double(imread('low_cameraman.pgm'));
[row,col] = size(I);
M1 = min(I(:));
M2 = max(I(:));
for i = 1 : row
    for j = 1 : col
        O(i,j) = ((255-0)/(M2-M1))*(I(i,j)-0)+M1;
    end
end
imshow(uint8(O));