require_relative "code"

class Mastermind
    def initialize(num)
        @secret_code = Code.random(num)
    end

    def print_matches(instance)
        p @secret_code.num_exact_matches(instance.pegs) 
        p @secret_code.num_near_matches(instance.pegs)
        #["Y",'R', 'B'].num_exact_matches()
    end

    def ask_user_for_guess
        print "Enter a code :"
        input = gets.chomp
        new_arr = Code.from_string(input)
        print_matches(new_arr)
        @secret_code == new_arr
    end
     

end
