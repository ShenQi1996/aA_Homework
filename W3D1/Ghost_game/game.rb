require "set"

class Game  
    attr_reader :dictionary
    DICTIONARY = IO.readlines("dictionary.txt")
    def initialize
        @players 
        @fragment = 
        words = IO.readlines("dictionary.txt").map(&:chomp)
        @dictionary = Set.new(words)
    end


   
end

game_1 = Game.new

p game_1.dictionary

