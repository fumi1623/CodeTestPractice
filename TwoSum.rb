def two_sum(nums, target)
  nums.each_with_index do |num, i|
      sub = target - num

      if sub == num
          ans = nums.rindex(sub)
          next if i == ans
          return [i, ans]
      end

      ans = nums.index(sub)
      next if ans == nil
      return [i, ans]
  end
end