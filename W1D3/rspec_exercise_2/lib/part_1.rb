# def partition(arr, num)
#     output = [[], []]
#     arr.each do |el|
#         if el >= num
#             output[1] << el
#         else
#             output[0] << el
#         end
#     end
#     output
# end
require "byebug"
def partition(arr, num)
    output = [[], []]
    output[1] = arr.select {|el| el >= num}
    output[0] = arr.select {|el| el < num}
    output
end

def merge(hash_1, hash_2)
    answer = {}
    hash_1.each do |k,v|
        answer[k] = v
    end
    hash_2.each do |k, v|
        answer[k] = v
    end
    return answer
end

def censor(str, arr)
    words = str.split(' ')
    new_s = []
    words.each do |word|
        if arr.include?(word.downcase)
            new_s << find_vowels(word)
        else  
            new_s << word
        end
    end
    new_s.join(' ')
end

def find_vowels(word)
    vowels = 'aeiou'
    new_word = ''
    word.each_char do |char|
        if vowels.include?(char.downcase)
            new_word += '*'
        else  
            new_word += char
        end
    end
    new_word
end


def power_of_two?(num)
    (0...num).each do |n|
        if 2**n == num
            return true
        end
    end
    false
end