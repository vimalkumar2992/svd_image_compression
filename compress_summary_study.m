futurama_array=[1200,1000,800,500,200,100,50];
UB_array=[242,200,150,100,50,20,10];
square_array=[200,50,10,2,1];


compress_summary('futurama.PNG',futurama_array);
compress_summary('UB.PNG',UB_array);
compress_summary('square.PNG',square_array);

f_array=['futurama.PNG','UB.PNG','square.PNG'];

A=imread('futurama.PNG');
[m,n,l]=size(A);
actual_pixel=m*n*l;
compression_ratio_futurama=zeros(size(futurama_array));
for i =1:length(futurama_array)
    p=futurama_array(i);
    compressed_pixel=l*p*(m+n+1);
    compression_ratio_futurama(i)=compressed_pixel/actual_pixel;
    
end

A=imread('UB.PNG');
[m,n,l]=size(A);
actual_pixel=m*n*l;
compression_ratio_UB=zeros(size(UB_array));
for i =1:length(UB_array)
    p=UB_array(i);
    compressed_pixel=l*p*(m+n+1);
    compression_ratio_UB(i)=compressed_pixel/actual_pixel;
    
end

A=imread('square.PNG');
[m,n,l]=size(A);
actual_pixel=m*n*l;
compression_ratio_square=zeros(size(square_array));
for i =1:length(square_array)
    p=square_array(i);
    compressed_pixel=l*p*(m+n+1);
    compression_ratio_square(i)=compressed_pixel/actual_pixel;
    
end



