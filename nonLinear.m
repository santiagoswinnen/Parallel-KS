function U = nonLinear(U, k, h)

    f = U  - (1/2 * 1i * k * h).*fft((real(ifft(U))).^2);
%    TODO COMPLETE AS EXAMPLE BELOW WITH LINEAR PART OF KS
%    f = 1i * s * k * stab/2;
    a = f .* fastFourierTransform(real(inverseFourierTransform(U)).^2);
    b = f .* fastFourierTransform(real(inverseFourierTransform(U + a/2)).^2);
    c = f .* fastFourierTransform(real(inverseFourierTransform(U + b/2)).^2);
    d = f .* fastFourierTransform(real(inverseFourierTransform(U + c)).^2);
    U = U + (a + 2*(b + c) + d) / 6;
end
