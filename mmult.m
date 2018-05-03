
n = 50;
for m = 1:14
r = m*n;
A = 10*rand(r);
B = 7*rand(r);
[M,N] = size(A); 
C_ikj = zeros(M,N);
tic
for i = 1:M
    for k = 1:N
        factor = A(i,k);
        for j = 1:M
            C_ikj(i,j) = factor*B(k,j)+ C_ikj(i,j);
        end
    end
end
time_ikj(m) = toc;
end


n = 50;
for m = 1:14
r = m*n;

A = 10*rand(r);
B = 7*rand(r);
[M,N] = size(A);
tic
for i = 1:M
    for j = 1:N
        sum = 0;
        for k = 1:M
            sum = sum + A(i,k)*B(k,j);
        end
        C(i,j) = sum;
    end
end
solution = C;
time_ijk(m)=toc;
end
array_size = 50*(1:14);
plot(array_size,time_ijk,array_size,time_ikj)