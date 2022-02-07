def length_of_last_word(s)
  word = s.split[-1].length
end

string = '  god something  usopp   '

p length_of_last_word(string)
