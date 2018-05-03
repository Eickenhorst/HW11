function[solution,time]=ikj_mult(mat1, mat2)
A = mat1;
B = mat2;
[M,N] = size(mat1);
for i = 1:M
    for k = 1:N
        sum = 0;
        for j = 1:M
            sum = sum + A(i,j)*B(j,k);
        end
        C(i,k) = sum;
    end
end
solution = C;
time(n)=toc;