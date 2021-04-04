def sum_to(n)
    return n if n <= 1
    n + sum_to(n - 1)
end

def add_numbers(array)
    return nil if array.empty? 
    return array.first if array.length == 1
    sum = array.pop
    sum + add_numbers(array)
end

def ice_cream_shop(flavors, favorite) 
    return false if flavors.empty? 
    new_flavors = flavors.pop
    if flavors.length <= 1
        return new_flavors == favorite
    else
        ice_cream_shop(flavors,favorite)
    end
end

def reverse(str)
    return str if str.length <= 1
    str[-1] + reverse(str[0..-2])
end

def gamma_fnc(n)
    return 1 if n <= 1
    tem = n - 1
    tem * gamma_fnc(n - 1)
end

