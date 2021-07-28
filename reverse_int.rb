 # reverse integer problem
 # NOT ALLOWED TO STORE 64-bit INTEGERS

# x = 234
# x = -432


# if 022, >> 22 -- remove LEADING zeros
#


def reverse_int(int)
  str = int.to_s
  acc = ""
  if str[0] == '-'
    acc + '-'
    str = str[1..-1]
  end
  raw = str.split('')
  raw.length.times do
    acc + raw.shift
  end
end

x = 234

p reverse_int(x)
