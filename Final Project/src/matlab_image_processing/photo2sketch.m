function sketch = photo2sketch(img)
    
    photo = imread(img);
    photo = rgb2gray(photo);   
       
    photoProc = photo;
    
    photoProc = imgaussfilt(photoProc, 6);
    
    photoProc = imcomplement(photoProc);
    
    newPhoto = 0.5 * photo + 0.5 * photoProc;
    
    sketch = newPhoto;
    [counts, x] = imhist(sketch);
    %{
    Th = 1000;
    m = 255;
    M = 0;
    for i = 1:size(counts, 1)
        if counts(i, 1) > Th
            if i < m
                m = i;
            end
            if i > M
                M = i;
            end
        end
    end
    disp(m);
    disp(M);
    sketch = imadjust(sketch, [m/255 M/255], []);
    %}
    sketch = imadjust(sketch);
    [counts, x] = imhist(sketch);    
    
    [M, I] = max(counts);
    
    for i = 1:size(sketch, 1)
        for j = 1:size(sketch, 2)
            if sketch(i, j) > 0.85 * I
                sketch(i, j) = 255;
            end
        end
    end
    se = strel('disk', 1);
    sketch = imclose(sketch, se);
    figure;
    imshow(sketch)
end