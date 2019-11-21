% p=1;
% f='futurama.PNG';
% 



function [img] = compress(f,p)
    A=imread(f);
    B=double(A);
    %B_app=zeros(size(B));
    B_app=B;
    [~,~,l]=size(B);
    for dim =1:l
        D=B(:,:,dim);
        [D_app] = svd_raw(D,p);
        B_app(:,:,dim)=D_app;
    end
    
    img=uint8(B_app);
end
% I = mat2gray(img);
% figure
% imshow(I)