# given S and T, find the character that was added by T
# find the character present in T that is missing in S
# T is a scrambled version of S - meaning only letter frequency will count
# find the letter whose freq count is +1 compared with S

def find_the_difference(s, t)
  return "invalid string" unless t.length - s.length == 1

  s_hash = hash_digest(s)
  t_hash = hash_digest(t)
  require "pry"; binding.pry
  t_hash.select do |k, v|
    v - s_hash[k] == 1
    return k
  end
end

def hash_digest(string)
  char_array = string.split('')
  output_hash = Hash.new(0)
  char_array.each do |char|
    output_hash[char] += 1
  end
  output_hash
end

string = 'abcd'
test   = 'abcde'
# expect 'e'

p find_the_difference(string, test)
