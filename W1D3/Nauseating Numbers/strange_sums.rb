#Phasse1

require "byebug"
# def strange_sums(numbers)
#     count = 0
#     numbers.each_with_index do |num, i|
#         numbers.each_with_index do |num2, i2|
#            count += 1 if i2 > i && num + num2 == 0
#         end
#     end
#     count
# end

# p strange_sums([2, -3, 3, 4, -2])     # 2
# p strange_sums([42, 3, -1, -42])      # 1
# p strange_sums([-5, 5])               # 1
# p strange_sums([19, 6, -3, -20])      # 0
# p strange_sums([9])                   # 0

# def pair_product(nums, product)
#     nums.each_with_index do |num, i|
#         nums.each_with_index do |num2, i2|
#             return true if i2 > i && num * num2 == product
#         end
#     end
#     false
# end

# p pair_product([4, 2, 5, 8], 16)    # true
# p pair_product([8, 1, 9, 3], 8)     # true
# p pair_product([3, 4], 12)          # true
# p pair_product([3, 4, 6, 2, 5], 12) # true
# p pair_product([4, 2, 5, 7], 16)    # false
# p pair_product([8, 4, 9, 3], 8)     # false
# p pair_product([3], 12)             # false

# def rampant_repeats(str, hash)
#     # chars = str.split('')
#     new_str = ""
#     str.each_char do |char|
#         if hash.has_key?(char) 
#             hash[char].times { new_str += char}
#         else
#             new_str += char
#         end
#     end
#     new_str
# end

# p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
# p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
# p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
# p rampant_repeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'

# def perfect_square(num)
#     (1..num).each do |i|
#         if i * i == num
#             return true
#         end
#     end
#     false
# end


# def perfect_square(num)
#     (1..num).any?{|i| i * i == num}
# end

# p perfect_square(1)     # true
# p perfect_square(4)     # true
# p perfect_square(64)    # true
# p perfect_square(100)   # true
# p perfect_square(169)   # true
# p perfect_square(2)     # false
# p perfect_square(40)    # false
# p perfect_square(32)    # false
# p perfect_square(50)    # false

#Phase 2

# def anti_prime?(num)
#     max_div = 0 
#     (1...num).each do |n|
#         if find_div(n) > max_div
#             max_div = find_div(n)
#         end
#     end
#    max_div < find_div(num)
# end

# def find_div(num)
#     (1..num).count do |n|
#         num % n == 0
#     end
# end

# 24 : 12, 8, 6, 4, 3, 2, 1
# 23 : 1
# 22 : 11, 2, 1
# 21 : 7, 3, 1
# # 20 : 10, 5, 4, 2, 1
# p anti_prime?(24)   # true
# p anti_prime?(36)   # true
# p anti_prime?(48)   # true
# p anti_prime?(360)  # true
# p anti_prime?(1260) # true
# p anti_prime?(27)   # false
# p anti_prime?(5)    # false
# p anti_prime?(100)  # false
# p anti_prime?(136)  # false
# p anti_prime?(1024) # false

def matrix_addition(m1 ,m2)
    m3 =[]
    i = 0
    while i < m1.length 
        temp = []
        temp << m1[i][0] + m2[i][0]
        temp << m1[i][1] + m2[i][1]
        m3 << temp
        i += 1
    end
    m3
end

# matrix_a = [[2,5], [4,7]]
# matrix_b = [[9,1], [3,0]]
# matrix_c = [[-1,0], [0,-1]]
# matrix_d = [[2, -5], [7, 10], [0, 1]]
# matrix_e = [[0 , 0], [12, 4], [6,  3]]
# #  0  1    0  1
# # [2,5] + [9,1]   0
# # [4,7] + [3,0]   1
# #                 2

# p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
# p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
# p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
# p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]


# def mutual_factors(num, *otherarg)
#     # debugger
#     answer = find_div(num)
#     return answer if otherarg.empty?
#     otherarg.each do |other|
#         compare(answer, find_div(other))
#     end
#     answer 
# end

# def find_div(num)
#     (1..num).select {|n| num % n == 0}
# end

# def compare(answer, arr)
#     answer.reject!{|el| !arr.include?(el) }
# end

# p mutual_factors(50, 30)            # [1, 2, 5, 10]
# p mutual_factors(50, 30, 45, 105)   # [1, 5]
# p mutual_factors(8, 4)              # [1, 2, 4]
# p mutual_factors(8, 4, 10)          # [1, 2]
# p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
# p mutual_factors(12, 24, 64)        # [1, 2, 4]
# p mutual_factors(22, 44)            # [1, 2, 11, 22]
# p mutual_factors(22, 44, 11)        # [1, 11]
# p mutual_factors(7)                 # [1, 7]
# p mutual_factors(7, 9)              # [1]


# def tribonacci_number(n)
#     return 1 if n <= 2
#     return 2 if n == 3
#     seq = [1,1,2]
#     while seq.length < n 
#         seq << (seq[-3] + seq[-2] + seq[-1])
#     end
    
#     seq[-1]
# end


# p tribonacci_number(1)  # 1
# p tribonacci_number(2)  # 1
# p tribonacci_number(3)  # 2
# p tribonacci_number(4)  # 4
# p tribonacci_number(5)  # 7
# p tribonacci_number(6)  # 13
# p tribonacci_number(7)  # 24
# p tribonacci_number(11) # 274

# #Phase3

# def matrix_addition_reloaded(*m)
#     return nil if m.any? {|sub| sub.length != m[0].length}
#     answer =[]
#     if m.length > 2
#         m1 = m[0]
#         m2 = m[1]
#         m3 = m[2]
#         i = 0
#         while i < m1.length 
#             temp = []
#             temp << m1[i][0] + m2[i][0] + m3[i][0]
#             temp << m1[i][1] + m2[i][1] + m3[i][1]
#             answer << temp
#             i += 1
#         end
#     elsif m.length == 1
#          return  m
#     else  
#         return matrix_addition(m[0] ,m[1])
#     end
#     answer
# end

# matrix_a = [[2,5], [4,7]]
# matrix_b = [[9,1], [3,0]]
# matrix_c = [[-1,0], [0,-1]]
# matrix_d = [[2, -5], [7, 10], [0, 1]]
# matrix_e = [[0 , 0], [12, 4], [6,  3]]
# #     0       1
# # [ 0  1    0  1
# #  [[2,5], [4,7]]       0 
# #  [[9,1], [3,0]]        1
# #  [[-1,0], [0,-1]]      2
# #  ]
  
# p matrix_addition_reloaded(matrix_a, matrix_b)              # [[11, 6], [7, 7]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_c)    # [[10, 6], [7, 6]]
# p matrix_addition_reloaded(matrix_e)                        # [[0, 0], [12, 4], [6, 3]]
# p matrix_addition_reloaded(matrix_d, matrix_e)              # [[2, -5], [19, 14], [6, 4]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_e)    # nil
# p matrix_addition_reloaded(matrix_d, matrix_e, matrix_c)    # nil

def squarocol?(2Darr)
    2darr.any? {|sub| sub.all?
end

p squarocol?([
    [:a, :x , :d],
    [:b, :x , :e],
    [:c, :x , :f],
]) # true

p squarocol?([
    [:x, :y, :x],
    [:x, :z, :x],
    [:o, :o, :o],
]) # true

p squarocol?([
    [:o, :x , :o],
    [:x, :o , :x],
    [:o, :x , :o],
]) # false

p squarocol?([
    [1, 2, 2, 7],
    [1, 6, 6, 7],
    [0, 5, 2, 7],
    [4, 2, 9, 7],
]) # true

p squarocol?([
    [1, 2, 2, 7],
    [1, 6, 6, 0],
    [0, 5, 2, 7],
    [4, 2, 9, 7],
]) # false

# def squaragonal?()

# end

# p squaragonal?([
#     [:x, :y, :o],
#     [:x, :x, :x],
#     [:o, :o, :x],
# ]) # true

# p squaragonal?([
#     [:x, :y, :o],
#     [:x, :o, :x],
#     [:o, :o, :x],
# ]) # true

# p squaragonal?([
#     [1, 2, 2, 7],
#     [1, 1, 6, 7],
#     [0, 5, 1, 7],
#     [4, 2, 9, 1],
# ]) # true

# p squaragonal?([
#     [1, 2, 2, 5],
#     [1, 6, 5, 0],
#     [0, 2, 2, 7],
#     [5, 2, 9, 7],
# ]) # false

# def pascals_triangle()

# end

# p pascals_triangle(5)
# # [
# #     [1],
# #     [1, 1],
# #     [1, 2, 1],
# #     [1, 3, 3, 1],
# #     [1, 4, 6, 4, 1]
# # ]

# p pascals_triangle(7)
# # [
# #     [1],
# #     [1, 1],
# #     [1, 2, 1],
# #     [1, 3, 3, 1],
# #     [1, 4, 6, 4, 1],
# #     [1, 5, 10, 10, 5, 1],
# #     [1, 6, 15, 20, 15, 6, 1]
# # ]


# #Phasse4

# def mersenne_prime()

# end

# p mersenne_prime(1) # 3
# p mersenne_prime(2) # 7
# p mersenne_prime(3) # 31
# p mersenne_prime(4) # 127
# p mersenne_prime(6) # 131071

# def triangular_word?()

# end

# p triangular_word?('abc')       # true
# p triangular_word?('ba')        # true
# p triangular_word?('lovely')    # true
# p triangular_word?('question')  # true
# p triangular_word?('aa')        # false
# p triangular_word?('cd')        # false
# p triangular_word?('cat')       # false
# p triangular_word?('sink')      # false

# def consecutive_collapse()

# end

# # p consecutive_collapse([3, 4, 1])                     # [1]
# # p consecutive_collapse([1, 4, 3, 7])                  # [1, 7]
# # p consecutive_collapse([9, 8, 2])                     # [2]
# # p consecutive_collapse([9, 8, 4, 5, 6])               # [6]
# # p consecutive_collapse([1, 9, 8, 6, 4, 5, 7, 9, 2])   # [1, 9, 2]
# # p consecutive_collapse([3, 5, 6, 2, 1])               # [1]
# # p consecutive_collapse([5, 7, 9, 9])                  # [5, 7, 9, 9]
# # p consecutive_collapse([13, 11, 12, 12])              # []

# def pretentious_primes()

# end

# # p pretentious_primes([4, 15, 7], 1)           # [5, 17, 11]
# # p pretentious_primes([4, 15, 7], 2)           # [7, 19, 13]
# # p pretentious_primes([12, 11, 14, 15, 7], 1)  # [13, 13, 17, 17, 11]
# # p pretentious_primes([12, 11, 14, 15, 7], 3)  # [19, 19, 23, 23, 17]
# # p pretentious_primes([4, 15, 7], -1)          # [3, 13, 5]
# # p pretentious_primes([4, 15, 7], -2)          # [2, 11, 3]
# # p pretentious_primes([2, 11, 21], -1)         # [nil, 7, 19]
# # p pretentious_primes([32, 5, 11], -3)         # [23, nil, 3]
# # p pretentious_primes([32, 5, 11], -4)         # [19, nil, 2]
# # p pretentious_primes([32, 5, 11], -5)         # [17, nil, nil]