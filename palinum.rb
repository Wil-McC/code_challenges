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
#     * center digit can be disregarded - it is the 'spoke'
#   - 2552 EVEN (4)
# =>  * leg = len / 2

# FLIPPING
# read first leg against reverse of second leg

# reverse = len.times do new_leg += leg2.pop

def is_palindrome(x)
  chars = x.to_s
  # refout - negative_check; doesn't preserve out init abil?
  if chars[0] == '-'
    out = false
  end
  # do a flip!

end

x = -101
# expect 'false'

p is_palindrome(x)
