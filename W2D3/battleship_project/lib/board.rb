require "byebug"

class Board

      attr_reader :size 

    def initialize(n)
        @grid = Array.new(n) {Array.new(n, :N)}
        @size = n * n
    end

    def self.print_grid(grid)
        grid.each do |row|
            puts row.join(" ")
        end
    end

    def [](array)
        row,col = array
        @grid[row][col]
    end

    def []=(position, value)
        row, col = position
        @grid[row][col] = value
    end

    def num_ships
        count = 0
        @grid.each do |sub|
            sub.each {|ele|  count += 1 if ele == :S }
        end
        count
    end

    #PART 2

    def attack(pos)
       if self[pos] == :S
          self[pos] = :H
          puts "you sunk my battleship!"
          return true
       else
          self[pos] = :X
          return false
       end
    end

    def place_random_ships
        new_size = size * 0.25
        i = 0
        while i < new_size
            new_value_one = (0...@grid.length).to_a.sample
            new_value_two = (0...@grid.length).to_a.sample
            if @grid[new_value_one][new_value_two] != :S 
                @grid[new_value_one][new_value_two] = :S
                i += 1
            end
        end
    end

    def hidden_ships_grid
        @grid.map do |row|
            row.map do |ele|
                if ele == :S
                    :N
                else
                    ele
                end
            end
        end
    end

    def cheat
        Board.print_grid(@grid)
    end

    def print
        Board.print_grid(self.hidden_ships_grid)
    end




end
