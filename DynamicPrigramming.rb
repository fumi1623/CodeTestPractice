def max_sub_array(nums)
    
  if nums.length == 1
      return nums[0]
  end
  
  dp = []
  dp[0] = nums[0]
  
  for i in 1...nums.length
      sum = dp[i-1] + nums[i]
      dp[i] = [sum, nums[i]].max
  end
  
  return dp.max
  
end