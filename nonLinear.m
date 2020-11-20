function U = nonLinear(U, k, h)

    f = -0.5 * 1i * k * h;
    a = f .* fastFourierTransform(real(inverseFourierTransform(U)).^2);
    b = f .* fastFourierTransform(real(inverseFourierTransform(U + a/2)).^2);
    c = f .* fastFourierTransform(real(inverseFourierTransform(U + b/2)).^2);
    d = f .* fastFourierTransform(real(inverseFourierTransform(U + c)).^2);
    U = U + (a + 2*(b + c) + d) / 6;
end
