def climb_stairs(n)

  # x + 2*y = n
  ans = 0
  x = 0
  
  while x <= n
     y = 0 
      while y <= n
          if x + 2 * y == n
              ary = []
              x.times{|x| ary << 1}
              y.times{|y| ary << 2}
              ans += prem(ary)
          end
          y += 1
      end
      x += 1
  end
  
  return ans
  
end

def factorial(n)
  (1..n).inject(1,:*)
end

def prem(ary)
  h = ary.group_by(&:itself)
  h[1] = [1]  if !h.has_key?(1)
  h[2] = [2]  if !h.has_key?(2)
  factorial(ary.size)/(factorial(h[1].size) * factorial(h[2].size))
end