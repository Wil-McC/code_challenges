# @param {String} s
# @return {Integer}
# 7 symbols
# 4 and 9 based numbers modulate 5s and 10s numbers
# Q - can I use .split etc

# syms = ['I', 'V', 'X', 'L', 'C', 'D', 'M']
# s.split
# syms.index(char)


def roman_to_int(s)
    syms = { 'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000 }
    chars = s.split('')
    count = 0
    i = 0
    while i < chars.length
        a = chars[i].to_sym
        if i == chars.length - 1
            count += syms[a]
            return count
        elsif syms[a] < syms[chars[i + 1].to_sym]
            count += (syms[b] -  syms[a])
            i += 2
        else
            count += syms[a]
            i += 1
        end
    end
end
