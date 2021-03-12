# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.

#Answer 
# def peak_finder(arr)
#     new_arr = []
#     if arr.length == 2
#         if arr[0] > arr[1]
#             return arr[0]
#         else
#             return arr[1]
#         end
#     end
#     if arr.length > 2
#         i = 1
#         if arr[0] > arr[1]
#             new_arr << arr[0]
#         end
#         if arr[-1] > arr[-2]
#             new_arr << arr[-1]
#         end
#         while i < arr.length - 1        # i will not be the first and the last element of the arr 
#             if arr[i] > arr[i + 1] && arr[i] > arr[i - 1]
#                 new_arr << arr[i]
#             end
#             i = i + 1
#         end
#     end
#     return new_arr
# end

#Answer



p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
p peak_finder([1, 3])               # => [3]
p peak_finder([3, 1])               # => [3]
