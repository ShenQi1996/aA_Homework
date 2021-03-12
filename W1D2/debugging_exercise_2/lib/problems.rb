# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    divisors = []
    (2..num).each do |divisor|
        if num % divisor == 0
            if prime?(divisor)
                divisors << divisor
            end
        end
    end
    divisors[-1]
end

def prime?(num)
    return false if num < 2 

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true
end