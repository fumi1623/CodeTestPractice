def remove_duplicates(nums)
    
    
  if nums.length == 0
      return
  end
  
  nums.uniq!
  return nums.length
  
end