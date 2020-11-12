%get_phi_lie_trotter Lie-Trotter integrator implementation
function Y = lieTrotter(U, k, delta_t, m, is_plus, counter)
  h = delta_t / m;
  if is_plus
    Y = nonLinear(linear(U, k, h), k, h);
  else
    Y = linear(nonLinear(U, k, h), k, h);
  end

  if counter ~= 1
    Y = lieTrotter(Y, k, delta_t, m, is_plus, counter-1);
  end

end
