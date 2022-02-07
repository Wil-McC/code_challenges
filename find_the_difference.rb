# given S and T, find the character that was added by T
# find the character present in T that is missing in S
# work linearly - return first non-matching character

def find_the_difference(s, t)
  return "invalid string" unless t.length - s.length == 1

  baseline = s.split('')
  salted   = t.split('')

  i = 0
  while i < salted.length
    if baseline[i] != salted[i]
      return salted[i]
    elsif i == baseline.length
      return salted[-1]
    else
      i += 1
    end
  end
end

string = 'a'
test   = 'aa'

p find_the_difference(string, test)
