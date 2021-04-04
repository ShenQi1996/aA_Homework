require "byebug"
def average(n1, n2)
    answer = (n1 + n2) / 2.0
    return answer
end

def average_array(arr)
   answer = (arr.sum.to_f / arr.length.to_f)
end

def repeat(str, num)
    answer = ""
    # debugger
    num.times{ answer += str }
    return answer
    # debugger
end

def yell(str)
   str.upcase + "!"
end

def alternating_case(str)
    words = str.split(" ")
    answer = []
    i = 0
    while i <= words.length-1
        if i % 2 == 0
            answer << words[i].upcase
        else 
            answer <<words[i].downcase 
        end
        i += 1
    end
    return answer.join(" ")

end

