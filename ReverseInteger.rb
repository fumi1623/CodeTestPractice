def reverse(x)
  if (x == 0) || (x.to_s.reverse.to_i > 2 ** 31)
      return 0
  elsif x > 0
      y = x.to_s.reverse.to_i
      return y
  else
      y = -1 * (x.to_s.reverse.to_i)
      return y
  end
end