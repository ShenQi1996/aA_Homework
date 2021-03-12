# Write a method, is_sorted(arr), that accepts an array of numbers as an arg.
# The method should return true if the elements are in increasing order, false otherwise.
# Do not use the built-in Array#sort in your solution :)

#Answer      Bubble Sort
# def is_sorted(arr)
#     i = 0                               # i = 0, 1 , 2 ,3 
#     while i < arr.length - 1           # length = 4       i will not be bigger than 4 or equals to 4   
#         if arr[i] > arr[i+1]
#             return false
#         end
#         i = i + 1
#     end
#     return true
# end
#Answer

p is_sorted([1, 4, 10, 13, 15])       # => true
p is_sorted([1, 4, 10, 10, 13, 15])   # => true
p is_sorted([1, 2, 5, 3, 4 ])         # => false
