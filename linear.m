function U = linear(U, k, h)
%    TODO COMPLETE AS EXAMPLE BELOW WITH LINEAR PART OF KS
%  U = U .* exp(1i * k * h); % phi_1
U = U .* exp((k.^2 - k.^4) * h);
end
