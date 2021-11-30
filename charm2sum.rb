def two_sum(nums, target)
  # create hash to link original index position with values
  cleaned = Hash.new
  nums.each_with_index do |item, index|
    cleaned[index] = item
  end
  require "pry"; binding.pry
end

numbers = [3, 2, 4]
t       = 6

p two_sum(numbers, t)
