def is_prime?(num)
    return false if num < 2 
    (2...num).each do |n|
        if num % n == 0
            return false
        end
    end
    true
end

def nth_prime(n)
    count = 0
    num = 0
    while count != n
        if is_prime?(num)
            count += 1
        end
        num += 1
    end
    num - 1
end

def prime_range(min , max)
    prime_in = []
    (min..max).each do |n|
        if is_prime?(n)
            prime_in << n
        end
    end
    prime_in
end
