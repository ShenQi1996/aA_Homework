require "byebug"
def reverser(str, &prc)
    prc.call(str.reverse)
end

def word_changer(str , &prc)
    words = str.split(" ")
    ans = []
    words.each do |w|
    ans << prc.call(w)
    end 
   # debugger
   return ans.join(" ")
 
end

def greater_proc_value(num, prc1, prc2)
    if prc1.call(num) > prc2.call(num)
        return prc1.call(num)
    end
    prc2.call(num)
end

def and_selector(arr, prc1, prc2)
    new_arr = []
    arr.each do |e|
        if prc1.call(e) && prc2.call(e)
            new_arr << e
        end
    end
    return new_arr
end

def alternating_mapper(arr, prc1, prc2)
    new_arr = []
    i = 0
    while i <= arr.length - 1
        if i.even?
            new_arr << prc1.call(arr[i])
        else
            new_arr << prc2.call(arr[i])
        end
        i += 1
    end
    return new_arr
end