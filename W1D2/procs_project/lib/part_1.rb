def my_map(arr, &prc)
    arr1 = []
    arr.each do |e|
        arr1 << prc.call(e)
    end
    return arr1
end

def my_select(arr, &prc)
    a1 = []
    arr.each do |e|
       if prc.call(e)
            a1 << e
       end
    end
    return a1
end

def my_count(arr, &prc)
    count = 0
    arr.each do |e|
        if prc.call(e)
             count += 1
        end
     end
     return count
end

def my_any?(arr, &prc)
    arr.each do |e|
        if prc.call(e)
             return true
        end
     end
     return false
end

def my_all?(arr, &prc)
    arr.each do |e|
        if !prc.call(e)
            return false
        end
    end
    return true
end

def my_none?(arr, &prc)
    arr.each do |e|
        if prc.call(e)
            return false
        end
    end
    return true
end