function Y = strang(U, k, delta_t, m, is_plus, counter)
  h = delta_t / m;
  if is_plus
    Y = nonLinear(linear(nonLinear(U, k, h/2), k, h), k, h/2);
  else
    Y = linear(nonLinear(linear(U, k, h/2), k, h), k, h/2);
  end

  if counter ~= 1
    Y = strang(Y, k, delta_t, m, is_plus, counter-1);
  end

end
