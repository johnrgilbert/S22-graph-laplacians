% Script to compute lambda_2 for path graphs

for i = 1:100
    n = 10*i;
    L = sparse(diag(ones(n,1),1));
    L = laplacian(L + L');
    [w2, l2] = fiedler(L);
    fprintf('n = %d; lambda_2 = %g\n', n, l2);
    nv(i) = n;
    ll(i) = l2 * n^2;
end;

plot(nv, ll, 'o')
xlabel('n')
ylabel('lambda_2 * n^2')
title('n^2 times Fiedler value for path graphs')
shg
