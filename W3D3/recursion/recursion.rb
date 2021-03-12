def range(start,last)
    #base case
    return [start] if start == last-1
    
    new_arr = []
    new_arr << start
    new_arr + range(start+1, last)

end

def sum_arr_rec(arr)
    return arr[0] if arr.length == 1

    temp = arr.pop
    temp += sum_arr_rec(arr)
end

def sum_arr(arr)
    arr.inject{|acc, ele| acc += ele}
end


def recursion_1(b,n)
    return 1 if n == 0
    b * recursion_1(b, n- 1)
end


def recursion_2(b,n)
    return 1 if n == 0
   if n.even?
    recursion_2(b, n/2) **2
   else
    b *(recursion_2(b,(n-1)/2)) ** 2
   end
end


class Array
    def deep_dup
        # return self  if !self.is_a?(Array) 
        self.map do |ele|
            if ele.is_a?(Array)
                ele.deep_dup
            else
                ele
            end
        end
    end
end


# robot_parts = [
#     ["nuts", "bolts", "washers"],
#     ["capacitors", "resistors", "inductors"]
#   ]
  
# new_arr = robot_parts.deep_dup
# p new_arr
# puts "__________1"
# new_arr[0] << "sam"
# p new_arr
# puts "__________2"
# p robot_parts

# p sum_arr([1,2,3,4])

def fibonacci(n)
    #basecase
    return [1] if n == 1
    return [1,1] if n == 2

    # # new_f = fibonacci(n -1)
    new_f = fibonacci(n -1)
    num = new_f[-1] + new_f[-2]
    new_f + [num]
    # new_arr << new_num
end

def fibonacci_i(n)
    base = [1,1]
    index = 2
    while base.length < n
        base << base[index-1] + base[index-2]
        index += 1
    end
    base 
end

require "byebug"
def bsearch(arr,target)
    # # arr.index {|ele| ele == target}

    # half_idx = arr.length-1 / 2
   
    # #case when target is at middle
    # arr[half_idx] == target
    # half_idx


    middle_index = arr.length / 2
    new_ele = arr[middle_index]
    debugger
    return middle_index if arr[middle_index] == target
    return nil if arr.length == 1
    debugger
    if target > arr[middle_index]
        debugger
        bsearch(arr[middle_index+1..-1], target) + middle_index + 1
    elsif target < arr[middle_index]
        debugger
        bsearch(arr[0...middle_index], target)
    end
end 


# p bsearch([1,3,2], 2)
# #123 2=2


# bsearch([1, 2, 3], 1) # => 0

# bsearch([2, 3, 4, 5], 3) # => 1 
# #less  = 2 3 
#         0   1


#[0,1,2,3,4,5] target = 4
# pivot = 3 < 4
#less = [0,1,2,3]
#greater = [4,5]
# 0 1



# bsearch([2, 4, 6, 8, 10], 6) # => 2
# bsearch([1, 3, 4, 5, 9], 5) # => 3
bsearch([1, 2, 3, 4, 5, 6,7,8,9,10,11,12], 11) # => 5
# bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# bsearch([1, 2, 3, 4, 5, 7], 6) # => nil
