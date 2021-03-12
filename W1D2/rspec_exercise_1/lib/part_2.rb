def hipsterfy(word)
    vowels = "aeiou"
    new_word = word.reverse
    i = 0
    tem = true
    while tem
        if i <= new_word.length - 1
            if vowels.include?(new_word[i])
                tem = false
                new_word[i] = ""
            end
            i += 1
        else i > new_word.length - 1
                tem = false
        end
    end
    return new_word.reverse
end

def vowel_counts(str)
    vowels = "aeiou"
    tem = Hash.new(0)
    str.each_char do |char|
        if vowels.include?(char)
            tem[char] += 1
        end
    end
    return tem
end

# def caesar_cipher(str, n)
#     al = "abcdefghijklmnopqrstuvwxyz"
#     new_str = ""
#     str.each_char do |char|
#         al.each_char.with_index do |char_2, idx|
#             if char == char_2
#                 if idx + n >= al.length - 1
#                    idx = ((idx + n) - 26)
#                    new_str += char_2[idx]
#                 else new_str += char_2[idx + n]
#                 end
#             end
#         end
#     end
#     return new_str
# end


def caesar_cipher (string, number)
    caesar_string = ""

    string.scan (/./) do |i|
      if ("a".."z").include? (i) 
        number.times {i = i.next}
      end
      caesar_string << i[-1]
    end
    return caesar_string
  end
