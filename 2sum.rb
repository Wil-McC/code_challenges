# given an array of integers, return the INDICES of the 2 numbers hwich add to target number

#

# IN - ( ARRAY of INT, target INT )
# OUT - ARRAY of INDICES ***

# assuming:
#   - ONLY TWO NUMBERS
#   - one good answer in array
#   - cannot repeat same element!

# discount all elements greater or equal to target - can't without losing index fidelity

def two_sum(nums, target)
  # make a hash to link
  acc = Hash.new
  # build value - index linking hash to retain original indices
  nums.each_with_index do |item, index|
    acc[index] = item
  end
  # clean out numbers >= target to reduce complexity
  # clean = acc.select do |k, v|
  #   v < target
  # end
  clean = nums.select do |num|
    num < target
  end

  if clean.sum == target
    return 
  # h.key(value) --> return key of value if present
  c = 0
end

# expect [0, 1]
p two_sum([2,7,11,15], 9)
