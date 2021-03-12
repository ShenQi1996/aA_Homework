def element_count(arr)
    hash = Hash.new {0}
    arr.each do |el|
        hash[el] += 1
    end
    hash
end

def char_replace!(str, hash)
    str.each_char.with_index do |char, i|
        if hash.has_key?(char)
            str[i] = hash[char]
        end
    end
    str
end

def product_inject(arr)
    return arr.inject { |acc, el| acc * el}
end