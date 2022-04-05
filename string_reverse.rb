# IN  - Array of chars
# OUT - no exp return

def reverse_string(s)
  l = 0
  r = s.length - 1

  while l < r
    s[l], s[r] = s[r], s[l]
    l += 1
    r -= 1
  end
end

samp = ['H', 'e', 'l', 'l', 'o']
# expect ['o', 'l', 'l', 'e', 'H']
p reverse_string(samp)
