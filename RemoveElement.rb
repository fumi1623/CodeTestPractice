def remove_element(nums, val)
    
  nums.reject!{|e| e == val}
  
  return nums.length
end