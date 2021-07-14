def str_str(haystack, needle)
    
  if haystack.length == 0 && needle == 0
      return 0
  end
  
  ans = haystack.index(needle)
  if ans == nil
      return -1
  else
      return ans
  end
end