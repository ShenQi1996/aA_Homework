require_relative "card"

class Board 
    def initialize(length)
        puts "Length must be even" if length.odd? 
        @length = length 
        @size = length*length 
        @grid = Array.new(length) { Array.new(length) }
    end

    def [](position)
        row, col = position 
        @grid[row][col]
    end

    def []=(position, value)
        row, col = position 
        @grid[row][col] = value
    end

    def populate 
        alpha = ("A".."Z").to_a
        i = 0
        while i < @size
            new_row1 = (0...@length).to_a.sample
            new_col1 = (0...@length).to_a.sample
            new_row2 = (0...@length).to_a.sample
            new_col2 = (0...@length).to_a.sample
            pos1 = [new_row1, new_col1]
            pos2 = [new_row2, new_col2]
            if self[pos1].nil? &&  self[pos2].nil? && pos1 != pos2
                letter = alpha.sample
                @grid[new_row1][new_col1] = Card.new(letter) 
                @grid[new_row2][new_col2] = Card.new(letter)
                i += 2
            end
        end
    end

    def print 
        puts "  #{(0...@length).to_a.join(" ")}"
        @grid.each_with_index do |row, i|
            mapped_row = row.map do |card| 
                if card.face_down?
                    "_"
                else
                    card.value 
                end
            end
            puts "#{i} #{mapped_row.join(" ")}"
        end
    end

    def flip(position)
        if self[position].face_down? 
            self[position].reveal
        else
            self[position].hide
        end
    end

    def win?
        @grid.all? do |row|
            row.all? {|card|  !card.face_down? }
        end
    end
end

# board_1 = Board.new(2)

# board_1.populate
# board_1.print
# puts "___________________"
# board_1.flip([1,1])
# board_1.flip([1,0])
# board_1.flip([0,0])
# board_1.flip([0,1])
# board_1.print
# p board_1.win?

# ----- BOARD -----
## board.new(length)
    # will take a length (must be even)
    # @size = length*length
    # @board = empty 2d array of given size (which will later be filled with board.populate)
## []
## []=
## board.flip(position)
    # take a position, and call card.hide/reveal on the card instance at that position
## board.print
    # iterate thru grid and call card.hide/reveal based on face down attribute
## board.win?
    # returns true if all cards are revealed
## board.populate
    # fill the board with shuffled card pairs 
    # array of a to z, depending on board's @size/2 will call card.new(letter) twice for each letter on a random position @board[random indices] = card.new(letter)
