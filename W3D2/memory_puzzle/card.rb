class Card
    attr_reader :value
    attr_accessor :pair

    def initialize(value)
      @value = value
      @face_down = true
      @pair = false
    end

    def face_down?
        @face_down
    end

    def hide  
       @face_down = true
    end

    def reveal
        if @face_down
            @face_down = false
        else
            puts "card is already face up"
        end
    end

    def ==(card)    #instance of a card 
        if @value == card.value
            @pair = true
            card.pair = true 
            return true
        end
        false
    end
end

# card_1 = Card.new("A")
# p card_1

# card_1.reveal
# card_1.hide
# card_2 = Card.new("B")

# p card_1 == card_2


# [[[[[ Roadmap ]]]]]

# ----- GAME -----
## game.new 
    # will create a board instance (2d array) of card instances
## game.get_position
    # print "Please enter position"
    # guess = gets.chomp.map(&:to_i)
    # returns array of user's position
## game.play 
    # continuously ask user for guesses (2 guesses) until all matches have been made? (maybe until board.win?)
    # will take that guess (position) and check if user's 1st guess matches the 2nd guess
        # store the board instance's board in case the user guesses wrong
        # once a user makes a guess, change card.face_down to false
    # if card.== is true then print the new board
        # if card.== is false change the current board back to the old board
    
# ----- BOARD -----
## board.new(length)
    # will take a length (must be even)
    # @size = length*length
    # @board = empty 2d array of given size (which will later be filled with board.populate)
    # create an instance variable, @face_down_grid, 2d array of card.hide
## []
## []=
## board.flip_position(position)
    # take a position, and call card.hide/reveal on the card instance at that position
## board.print
    # iterate thru grid and call card.hide/reveal based on face down attribute
## board.win?
    # returns true if all cards are revealed
## board.populate
    # fill the board with shuffled card pairs 
    # array of a to z, depending on board's @size/2 will call card.new(letter) twice for each letter on a random position @board[random indices] = card.new(letter)
## board.reveal(position)
    # will call card.reveal if card at given position is face down

# ----- CARD -----
## card.new
    # contains information on the card's value and face up/down position
## card.face_down?
    # returns boolean whether card is face down
## card.hide
    # prints an underscore representing a face down card
## card.reveal
    # prints the card's value
## card.==
    # sees if user's first guess match's second guess
