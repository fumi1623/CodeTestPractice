def plus_one(digits)
    
  i = digits.length - 1
  while i >= 0 do
      if digits[i] == 9
          digits[i] = 0
      else
          digits[i] += 1
          return digits
      end
      i -= 1
  end
  digits.insert(0, 1)
  return digits
  
end