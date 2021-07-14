def search_insert(nums, target)
    
  if nums.include?(target)
      return nums.index(target)
  else
      ins = nums.find_index { |n| n > target}
      if ins == nil
          return nums.length
      else
          return ins
      end
  end
  
end