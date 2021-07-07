# @param {String[]} strs
# @return {String}

# step through each element as long as all elements have the same letters
# letters that match for all elements are stored in an acc
# return acc

# elements.all? do |elem|

# end
# assumption: max possible common prefix limited to length of shortest word

strs = ["glower","glops","glur"]

def longest_common_prefix(strs)
  acc = ""
  count = 0
  while count < strs.first.length
    letter = strs.first[count]
    if strs.all? { |elem| elem[count] == letter }
      acc += letter
      count += 1
    else
      break
    end
  end
  acc
end

p longest_common_prefix(strs)
