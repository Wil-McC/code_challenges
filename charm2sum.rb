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
  end
end

# expect [1, 2] OR [2, 1]
numbers = [3, 2, 4]
t       = 6

p two_sum(numbers, t)
