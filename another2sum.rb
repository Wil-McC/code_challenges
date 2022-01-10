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
  # add check for specific correctness
  if cleaned.length == 2
    return cleaned.map do |k, v|
       k
    end
  else
    acc = Array.new

    cleaned.each_with_index do |val, idx|

    end

    # unless

    # cleaned.values.each do |val|
      # iso = target - val
      # key = cleaned.key(iso)
      # require "pry"; binding.pry
      # if key
        # acc << cleaned.key(val) unless
        # acc << key
      # end
    # end
  end
  return acc
end

numbers = [3, 2, 4]
t       = 6

p two_sum(numbers, t)
# expect [1, 2]
