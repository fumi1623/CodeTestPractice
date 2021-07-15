def add_binary(a, b)
    
  ten_a = a.to_i(2)
  ten_b = b.to_i(2)
  
  ten_ans = ten_a + ten_b
  ans = ten_ans.to_s(2)
  return ans
  
end