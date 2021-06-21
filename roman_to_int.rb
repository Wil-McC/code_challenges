# @param {String} s
# @return {Integer}
# 7 symbols
# 4 and 9 based numbers modulate 5s and 10s numbers
# Q - can I use .split etc

# syms = ['I', 'V', 'X', 'L', 'C', 'D', 'M']
# s.split
# syms.index(char)

#     while i < chars.length
#         a = chars[i].to_sym
#         if i == chars.length - 1
#             count += syms[a]
#             return count
#         elsif syms[a] < syms[chars[i + 1].to_sym]
#             count += (syms[chars[i + 1].to_sym] -  syms[a])
#             i += 2
#         else
#             count += syms[a]
#             i += 1
#         end
#     end

# make an array of equivalent ints
# sum all the ints, using subtraction when a smaller num comes before a larger num
#


def roman_to_int(s)
    syms = { 'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000 }
    chars = s.split('')
    nums = chars.map do |char|
         syms[char.to_sym]
    end
    count = 0
    i = 0

    until nums.length == 0
        if nums[0] < nums[1]
            count += (nums[1] - nums[0])
            nums.shift(2)
        else
            count += nums.shift
        end
    end

    return count
end
