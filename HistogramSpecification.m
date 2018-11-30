I = imread('low_cameraman.pgm');
[row,col] = size(I);
for i = 1 : 256
    K(i) = 0;
end
for i = 1 : row
    for j = 1 : col
        K(I(i,j)+1) = K(I(i,j)+1)+1;
    end
end
cmf = 0;
for i = 1 : 256
    cmf = cmf + K(i);
    K(i) = round((255*cmf)/(row*col));
end
for i = 1 : row
    for j = 1 : col
        O1(i,j) = K(I(i,j)+1)+1;
    end
end


%TargetImage
J = imread('cameraman.pgm');
[rowt,colt] = size(J);
for i = 1 : 256
    Kt(i) = 0;
end
for i = 1 : rowt
    for j = 1 : colt
        Kt(J(i,j)+1) = Kt(J(i,j)+1)+1;
    end
end
cmft = 0;
for i = 1 : 256
    cmft = cmft + Kt(i);
    Kt(i) = round((255*cmft)/(rowt*colt));
end
for i = 1 : rowt
    for j = 1 : colt
        O2(i,j) = Kt(J(i,j)+1)+1;
    end
end

%Calculations
K3 = K;
for i = 1 : 256
    smallest = Kt(1);
    jmin = 1;
    for j = 1 : 256
        if abs(K(i)-Kt(j)) < abs(smallest - Kt(j))
            smallest = Kt(j);
            jmin = j;
        end
    end
    K3(i) = jmin-1;
end
for i = 1 : row
    for j = 1 : col
        Out(i,j) = K3(I(i,j)+1)+1;
    end
end
figure,imshow(uint8(Out));
figure,imhist(uint8(Out));  