function compress_study(f,pArray)
    
    A=imread(f);
    img=uint8(A);
    I = mat2gray(img);
    j=ceil((length(pArray)+1)/3);
    subplot(j,3,1,'align');
    imshow(I);
    title(sprintf('Original'))
    for i =1:length(pArray)
        [img] = compress(f,pArray(i));
        I = mat2gray(img);
        subplot(j,3,i+1,'align');
        imshow(I);
        imwrite(I,'summ.PNG')
        title(sprintf('Rank = %d', pArray(i)))
        drawnow
    end
end
