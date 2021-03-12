class GuessingGame
    attr_reader :num_attempts
    def initialize(min, max)
        @secret_num = self.rand
        @num_attempts = 0
        @game_over = false
    end
    
    def game_over?
        @game_over
    end

    def check_num(num)
        @num_attempts += 1
        if num == @secret_num
            @game_over = true
            print "you win\n"
        elsif num > @secret_num
            print "Number is too big\n"
        else
            print "Number is too small\n"
        end
    end

    def ask_user
        print "enter a number:"
        input = gets.chomp.to_i
        check_num(input)
    end
end
