# given an array of integers, return the INDICES of the 2 numbers hwich add to target number

# IN - ( ARRAY of INT, target INT )
# OUT - ARRAY of INDICES ***

# assuming:
#   - one good answer in array
#   - cannot repeat same element!

# discount all elements greater or equal to target - can't without losing index fidelity

def two_sum(nums, target)
  # make a hash to link
  acc = Hash.new
  nums.each_with_index do |item, index|
    acc[index] = item
  end
  # if 2 sum to target, value of key added to accumulator
  
end

# expect [0, 1]
p two_sum([2,7,11,15], 9)
