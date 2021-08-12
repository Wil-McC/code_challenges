# IN - integer
# OUT - boolean: T / F

# a negative sign DQs an entry!!!

# LOGIC

# a number is palindromic if
#   - it reads the same backwards and forwards
# palindromic numbers can have even or odd digit counts
#   - 202 ODD (3)
#     * (len - 1) / 2 = one 'leg'
#       - array position of center = -(leg + 1)
#     * center digit can ***NOT NOT NOT*** be disregarded - it is the 'spoke'
#   - 2552 EVEN (4)
# =>  * leg = len / 2

# FLIPPING
# read first leg against reverse of second leg

# reverse = len.times do new_leg += leg2.pop


def is_palindrome(x)
  chars = x.to_s

  if chars.length % 2 == 0
    len = chars.length / 2
  elsif chars.length % 2 == 1
    len = (chars.length - 1) / 2
  end

  leg1 = chars[0..(len - 1)]
  leg2 = chars[-len..-1]
  test_leg = String.new

  leg2.length.times do
    test_leg += leg2[-1]
    leg2 = leg2.chop
  end

  if chars[0] == '-'
    return false
  else
    return leg1 == test_leg
  end
end

x = 121

p is_palindrome(x)
