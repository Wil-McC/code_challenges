# given an array of integers, return the INDICES of the 2 numbers hwich add to target number

# IN - ( ARRAY of INT, target INT )
# OUT - ARRAY of INDICES ***

# assuming:
#   - one good answer in array
#   - cannot repeat same element!

# discount all elements greater or equal to target

def two_sum(nums, target)
  # indices of nums that equal target - map?
  clean = nums.select do |num|
    num < target
  end
  
end

# expect [0, 1]
p two_sum([2,7,11,15], 9)
