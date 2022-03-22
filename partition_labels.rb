# partition string into max number of segments where chars only appear in one segment
# where : final_segments.concat() == s
# create hashmap of each character's latest occurence (0 - that point is the range of the segment needed)
# use math to calculate sequential lengths of container segments

# IN : String of chars EX: 'abc'
# OUT: Array of partition length integers EX: [1, 1, 1]

def partition_labels(s)
  index_map = Hash.new
  char_array = s.split('')
  # map latest appearance index to each appearing character
  char_array.each_with_index do |char, idx|
    index_map[char] = idx
  end
  result = Array.new
  counter = 0
  prev = -1
  max = 0
  while counter < s.length
    current_max = index_map[char_array[counter]]
    max = [max, current_max].max
    if max == counter
      result << (max - prev)
      prev = max
    end
    counter += 1
  end
  return result
end

str = "ababcbacadefegdehijhklij"
# expect [9, 7, 8]

p partition_labels(str)
