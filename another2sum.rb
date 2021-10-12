# HASH BASED ATTEMPT

# IN  - an ARRAY of INTEGERS, an INTEGER target
# OUT - an ARRAY of INDEX POINTERS

def two_sum(nums, target)
  h = Hash.new
  nums.each_with_index do |item, index|
    h[index] = item
  end

  cleaned = h.select do |k, v|
    v < target
  end

  if cleaned.length == 2
    return cleaned.map do |k, v|
       k
    end
  else
    acc = Array.new
    # the loop is as follows:
    # grab a num
    # subtract it from the target
    # use hash methods to check for matching value
    # along the way (?) store indexes of success
  end

end

numbers = [1, 12, 9, 2]
t       = 3

p two_sum(numbers, t)
# expect [0, 3]
