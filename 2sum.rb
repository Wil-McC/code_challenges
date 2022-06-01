# given an array of integers, return the INDICES of the 2 numbers hwich add to target number

# IN - ( ARRAY of INT, target INT )
# OUT - ARRAY of INDICES ***

# assuming:
#   - ONLY TWO NUMBERS
#   - one good answer in array
#   - cannot repeat same element!

def two_sum(nums, target)
  index_map = Hash.new

  nums.each_with_index do |val, idx|
    diff = target - val
    if index_map[diff]
      return [index_map[diff], idx]
    else
      index_map[val] = idx
    end
  end
end


# expect [0, 2]
p two_sum([-3,4,3,90], 0)
