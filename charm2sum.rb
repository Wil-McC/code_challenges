# OUT: *indices* of 2 elements that sum to target

def two_sum(nums, target)
  # create hash to link original index position with values
  cleaned = Hash.new

  nums.each_with_index do |item, index|
    if item < target
      cleaned[index] = item
    end
  end
  require "pry"; binding.pry
  # cleaned.key(val)
  acc = Array.new

end

# expect [1, 2] OR [2, 1]
numbers = [3, 2, 4]
t       = 6

p two_sum(numbers, t)
