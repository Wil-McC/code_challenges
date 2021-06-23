# @param {String[]} strs
# @return {String}

# step through each element as long as all elements have the same letters
# letters that match for all elements are stored in an acc
# return acc

# elements.all? do |elem|

# end
# assumption: max possible common prefix limited to length of shortest word

strs = ["flower","flow","flight"]

def longest_common_prefix(strs)
  acc = ""
  count = 0
  letter = strs.first[count]
  while count < strs.first.length

  end
end

p longest_common_prefix(strs)
