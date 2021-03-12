# Write a method, max_inject(arr), that accepts any amount of numbers arguments and returns
# the largest number. Solve this using the built-in inject.



#Answer
def compress_str(str)
    new_char = str.split("") 
    answer = "" 
    count = 1
    i = 0
    while i < new_char.length     
        if new_char[i] == new_char[i+1] 
            count += 1
        elsif new_char[i] != new_char[i +1] && new_char[i] != new_char[i - 1]
            answer += new_char[i]
        else
            answer += count.to_s + new_char[i] 
            count = 1
        end
        i += 1
    end
    answer
end
#Answer

p max_inject(1, -4, 0, 7, 5)  # => 7
p max_inject(30, 28, 18)      # => 30
