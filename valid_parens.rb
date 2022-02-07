# Input: s = "()"
# Output: true

# INPUT - STRING
# OUTPUT - T / F

def is_valid(s)
  stack = Array.new
  lefts = ['(', '[', '{']

  s.each_char do |char|
    if lefts.include?(char)
      stack << char
    elsif char == ')'
      return false unless stack.pop() == '('
    elsif char == ']'
      return false unless stack.pop() == '['
    elsif char == '}'
      return false unless stack.pop() == '{'
    end
  end
  return stack.empty?
end

string = '[()[]{}]'

p is_valid(string)
