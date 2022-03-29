# OUT: *indices* of 2 elements that sum to target

def two_sum(nums, target)
  # create hash to link original index position with values
  cleaned = Hash.new
  nums.each_with_index do |item, index|
    if item < target
      cleaned[index] = item
    end
  end

  # cleaned.key(val) && key != current_idx
  acc = Array.new

  cleaned.each do |k, v|
    # get value - current_val
    # get needed pair to hit target (target - current_val)
    # check for that value in hash vals
    # if that val, add current_val key (idx) and pair_val key (idx) to output array
    needed_pair = target - v
    if cleaned.key(needed_pair) && cleaned.key(needed_pair) != k
      acc << k
      acc << cleaned.key(needed_pair)
      break
    end
  end
  return acc
end

# expect [0, 3]
numbers = [0,4,3,0]
t       = 0

p two_sum(numbers, t)
