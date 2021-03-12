def duos(str)
    count = 0
    str.each_char.with_index do | char, i|
        if str[i] == str[i + 1]
            count += 1
        end
    end
    count
end

# p duos('bootcamp')      # 1
# p duos('wxxyzz')        # 2
# p duos('hoooraay')      # 3
# p duos('dinosaurs')     # 0
# p duos('e')             # 0

def sentence_swap(str, hash)
    words = str.split(" ")
    answer = []
    words.each do |word|
        if hash.has_key?(word)
            answer << hash[word]
        else
            answer << word
        end
    end
    answer.join(" ")
end

# p sentence_swap('anything you can do I can do',
#     'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'
# ) # 'nothing you shall drink I shall drink'

# p sentence_swap('what a sad ad',
#     'cat'=>'dog', 'sad'=>'happy', 'what'=>'make'
# ) # 'make a happy ad'

# p sentence_swap('keep coding okay',
#     'coding'=>'running', 'kay'=>'pen'
# ) # 'keep running okay'

def hash_mapped(hash, proc , &block)
    new_hash = {}
    hash.each do |k, v|
        new_hash[block.call(k)] = proc.call(v)
    end
    new_hash
end


# double = Proc.new { |n| n * 2 }
# p hash_mapped({'a'=>4, 'x'=>7, 'c'=>-3}, double) { |k| k.upcase + '!!' }
# # {"A!!"=>8, "X!!"=>14, "C!!"=>-6}

# first = Proc.new { |a| a[0] }
# p hash_mapped({-5=>['q', 'r', 's'], 6=>['w', 'x']}, first) { |n| n * n }
# # {25=>"q", 36=>"w"}

def counted_characters(str)
    hash = Hash.new{0}
    str.each_char do |char|
        hash[char] += 1
    end
    hash.filter{ |k,v| v >2}.keys
end

p counted_characters("that's alright folks") # ["t"]
p counted_characters("mississippi") # ["i", "s"]
p counted_characters("hot potato soup please") # ["o", "t", " ", "p"]
p counted_characters("runtime") # []