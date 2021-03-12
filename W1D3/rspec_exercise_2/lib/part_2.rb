def palindrome?(str)
    n_str = []
    str.each_char do |char|
        n_str.unshift(char)
    end
    if n_str.join('') == str
        return true
    end
    false
end

def substrings(str)
    arr = []
    str.each_char.with_index do |c, i|
        str.each_char.with_index do |c2, i2|
            if i2 >= i
                arr << str[i..i2]
            end
        end
    end
    arr
end

def palindrome_substrings(str)
    sub_str = substrings(str)
    sub_str.select do |sub| 
        if sub.length > 1
            palindrome?(sub)
        end
    end
end

