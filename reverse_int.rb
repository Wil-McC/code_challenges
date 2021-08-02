 # reverse integer problem
 # NOT ALLOWED TO STORE 64-bit INTEGERS

# x = 234
# x = -432


# if 022, >> 22 -- remove LEADING zeros
# [-2^31, 2^31 - 1]


def reverse_int(int)
  str = int.to_s
  acc = ""
  if str[0] == '-'
    acc += '-'
    str = str[1..-1]
  end
  raw = str.split('')
  raw.length.times do
    acc += raw.pop
  end
  # scope_out(out)
  out = acc.to_i
  if out < -2 ** 31 || out > 2 ** 31 - 1
    return 0
  else
    return out
  end
end

x = 1534236469

p reverse_int(x)
