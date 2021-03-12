require_relative "card"
require_relative "board"

class Game
    attr_reader :board

    def self.get_length
        print "Please enter an even number to build the board: "
        input = gets.chomp.to_i  
    end

    def initialize(length)
        @board = Board.new(length) 
    end

    def get_position
        print "Please enter a position like '1 2': "
        input = gets.chomp.split.map(&:to_i)
    end

    def self.play
        game = Game.new(Game.get_length)
        game.board.populate
        while !game.board.win?
            game.board.print
            first_guess = game.get_position
            game.board[first_guess].reveal
            game.board.print
            second_guess = game.get_position
            game.board[second_guess].reveal 
            game.board.print
            sleep(2)
            if !game.board[first_guess].pair && !game.board[second_guess].pair
                if !(game.board[first_guess] == game.board[second_guess])
                    game.board.flip(first_guess)
                    game.board.flip(second_guess)
                end
            else 
                if !game.board[first_guess].pair
                    game.board.flip(first_guess)
                elsif !game.board[second_guess].pair
                    game.board.flip(second_guess)
                end
            end
            system("clear")
        end
        puts "YOU WON"
    end
end

game = Game.play 
# game.populate 


# ----- GAME -----
## game.new 
    # will create a board instance (2d array) of card instances
## game.get_position
    # print "Please enter position"
    # guess = gets.chomp.split.map(&:to_i)
    # returns array of user's position
## game.play 
    # continuously ask user for guesses (2 guesses) until all matches have been made? (maybe until board.win?)
    # will take that guess (position) and check if user's 1st guess matches the 2nd guess
        # store the board instance's board in case the user guesses wrong
        # once a user makes a guess, change card.face_down to false
    # if card.== is true then print the new board
        # if card.== is false change the current board back to the old board
    