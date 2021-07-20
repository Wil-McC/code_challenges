# return all possible combinations of symbolized letters
# order does NOT matter

# all numbers 2..9 are associated with a set of 3-4 letters
#all combinations where each key produces one of any of its letters

# INPUT is a STRING of digits

# OUTPUT is an ARRAY of STRINGS whose LENGTH matches the length of the input digit - gatekeep?
# -- .all? |strs| str.length == input.length

# 2 can be a b or c
# 3 can be d e or f
# 23 can be ad, ae, af, bd, be, bf, cd, ce, cf

key_letters = {
  "2" => ["a", "b", "c"],
  "3" => ["d", "e", "f"],
  "4" => ["g", "h", "i"],
  "5" => ["j", "k", "l"],
  "6" => ["m", "n", "o"],
  "7" => ["p", "q", "r", "s"],
  "8" => ["t", "u", "v"],
  "9" => ["w", "x", "y", "z"]
}

# create collection, run down each iteration and toss all valid combos into acc
