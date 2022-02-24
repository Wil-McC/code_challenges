# IN  - String  - 'AB'
# OUT - Integer - 28

# Map nums to letters
# work right to left to evaluate and sum - reverse to achieve same with matching indexes

def title_to_number(column_title)
  reversed = column_title.reverse
  output   = 0
  reversed.chars.each_with_index do |char, idx|
    output += (char.ord - 65 + 1) * (26 ** idx)
  end
end

puts title_to_number('AB')
