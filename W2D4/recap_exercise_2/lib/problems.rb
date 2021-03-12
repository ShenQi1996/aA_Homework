# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple
# of both of the given numbers
def least_common_multiple(num_1, num_2)
    (num_1..(num_1 * num_2)).each do |i|
        if i % num_1 == 0 && i % num_2 == 0        
            return i
        end 
    end 
end


# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
    new_hash = Hash.new(0)
    (0...str.length).each do |i|
        new_hash[str[i...i+2]] += 1 if str[i...i+2].length == 2
     end
     max = 0
     keys = ""
     new_hash.each do |k, v|
        if v > max
            max = v
            keys = k
        end
     end
     return keys
end

class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        self.map { |k, v| [v, k]}.to_h
    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number 
    # returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        count = 0
        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                if self[i] + self[j] == num
                    count += 1
                end
            end
        end
        count
    end

    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    #
    # Sorting algorithms like bubble_sort, commonly accept a block. That block accepts
    # two parameters, which represents the two elements in the array being compared.
    # If the block returns 1, it means that the second element passed to the block
    # should go before the first (i.e. switch the elements). If the block returns -1,
    # it means the first element passed to the block should go before the second
    # (i.e. do not switch them). If the block returns 0 it implies that
    # it does not matter which element goes first (i.e. do nothing).
    #
    # This should remind you of the spaceship operator! Convenient :)
    def bubble_sort(&prc)
        if prc == nil 
            return self.sort!
        end

        not_sorted = true
        while not_sorted
            not_sorted = false
            (0...self.length-1).each do |i|
                if prc.call(self[i], self[i + 1]) == 1
                    self[i], self[i +1] = self[i +1], self[i]
                    not_sorted = true  
                end
            end
        end
        self
    end 

end 
 


# 7 <=> 2     # => 1
# 7 <=> 7     # => 0
# 2 <=> 7     # => -1
# 10 <=> 2    # => 1
# -5 <=> 10   # => -1
# -3 <=> -9   # => 1

# [127] pry(main)> "4" < "5"
# => true
# [128] pry(main)> "45" < "5"
# => true
# [129] pry(main)> "5" > "7"
# => false
# [130] pry(main)> "59" > "79"
# => false
# [131] pry(main)> "59" > "49"
# # => true
# [131] pry(main)> "59" > "49"
# => true
# [132] pry(main)> "51" < "52"
# => true
# [133] pry(main)> "56" < "54"
# => false
# [134] pry(main)> "56" < "59"
# => true
