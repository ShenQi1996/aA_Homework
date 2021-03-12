# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should return true if the string contains only vowels.
# The method should return false otherwise.


#Answer
# def only_vowels?(str)
# vowels = "aeiou"
# char1 = str.split("")
# char1.all? {|c| vowels.include?(c)}
# end

#Answer

p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false


