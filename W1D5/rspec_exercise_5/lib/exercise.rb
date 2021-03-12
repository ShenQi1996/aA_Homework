require "byebug"

# def zip(*arr)
#     new_arr = []
#     # arr.each_with_index do |el , i|
#     #     other.each_with_index do |el2, i2|
#     #         if i2 > i
#     #             new_arr << [el,el2]
#     #         end
#     #     end
#     # end
#     # new_arr
    
#     # arr.each_index do |i|
#     #     tem = other[i]
#     #         new_arr << [arr[i],tem[i]]
#     # end
#     # new_arr

#     arr.each do |ele|
#         new_arr << ele
#     end
#     new_arr
# end

# p zip(array_1, array_2, array_3)


def zip(*arr)
    out_length = arr.length
    sub_length = arr[0].length
    answer = Array.new (sub_length){Array.new(out_length)}
    (0...out_length).each do |out_i|
        (0...sub_length).each do |in_i|
            answer[in_i][out_i] = arr[out_i][in_i]  
        end
    end
    answer
end


def prizz_proc(arr, prc1, prc2)

    new_arr=[]
    arr.each do |ele|
        if prc1.call(ele) && !prc2.call(ele)
            new_arr << ele
        elsif !prc1.call(ele) && prc2.call(ele)
            new_arr << ele
        end
    end
    new_arr

end

     
def zany_zip(*arr)    
    out_length = arr.length
    sub_length = 0
    arr.each do |ar|
        sub_length = ar.length if ar.length > sub_length
    end
    answer = Array.new (sub_length){Array.new(out_length)}
    (0...out_length).each do |out_i|
        (0...sub_length).each do |in_i|
            answer[in_i][out_i] = arr[out_i][in_i]  
        end
    end
    answer
end

def maximum(arr, &prc)
    # new_arr = []
    # arr.each do |el|
    #     new_arr << prc.call(el)
    # end
    # max_index = 0
    # max = 0
    # new_arr.each_with_index do |el, i| 
    #     if  el > max
    #         max = el
    #         max_index = i
    #     elsif el == max
    #         max_index = i
    #     end
    # end
    # arr[max_index]
    return nil if arr.empty?
    max = arr[0]
    arr.each do |el|
        if prc.call(el) >= prc.call(max)
            max = el
        end
    end
    max
end

def my_group_by(arr, &prc)
    hash = {}
    arr.each do |ele|
         if hash.has_key?(prc.call(ele))
            hash[prc.call(ele)] << ele
        else
            hash[prc.call(ele)] = [ele]
        end
    end
    hash
end


def max_tie_breaker(arr, prc_tie, &block)
    return nil if arr.empty?
    max = arr[0]
    arr.each do |el|
        block_max = block.call(max)
        block_el = block.call(el)
        if block_el > block_max 
            max = el
        elsif block_el == block_max && prc_tie.call(el) > prc_tie.call(max)
            max = el
        end
    end
    max
end

def silly_syllables(sentence)
    words = sentence.split(" ")
    answer = []
    words.each do |word|
        no_vowels_index = find_vowels(word)
        if no_vowels_index.length < 2
            answer << word
        else
            answer << change_word(word)
        end
    end
    answer.join(" ")
end

def find_vowels(word)
    vowels = "aeiou"
    index_vowels = []
    word.each_char.with_index do |char, i|
        if vowels.include? char
            index_vowels << i
        end
    end
    index_vowels
end

def change_word(word)
    index_vowels = find_vowels(word)
    word[index_vowels[0]..index_vowels[-1]]
end

