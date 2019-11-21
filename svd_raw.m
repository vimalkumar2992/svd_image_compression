function [A_app] = svd_raw_raw(A,p)
     A_rank=rank(A);
     if p>=A_rank
         A_app=A;
     elseif A_rank>p
         [u,sigma,v]=svd(A);
         sigma_temp=sigma;
         for i =1:(A_rank-p)
            sigma_temp(p+i,p+i)=0;
         end
         A_app=u*sigma_temp*v';
     end
         
end

