# given an array of integers, return the INDICES of the 2 numbers hwich add to target number

# IN - ( ARRAY of INT, target INT )
# OUT - ARRAY of INDICES ***

# assuming:
#   - ONLY TWO NUMBERS
#   - one good answer in array
#   - cannot repeat same element!

def two_sum(nums, target)
  index_map = Hash.new
  nums.each_with_index do |itm, idx|
    index_map[idx] = itm
  end

  cleaned_hash = index_map.select do |k, v|
    v <= target
  end

  if cleaned_hash.length == 2 && cleaned_hash.values.sum == target
    return cleaned_hash.values
  end

  cleaned_hash.each do |k, v|
    check_hash = all_else(cleaned_hash, k)
    
  end
end

def all_else(h, outkey)
  h.select do |key, val|
    key != outkey
  end
end

# expect [0, 2]
p two_sum([2,11,7,4,6,15], 9)
