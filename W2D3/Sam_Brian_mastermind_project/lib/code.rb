
require "byebug"

class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }
  attr_reader :pegs
  def self.valid_pegs?(arr_char) 
    (0...arr_char.length).all? do |i|
      POSSIBLE_PEGS.has_key?(arr_char[i].upcase)
    end
  end

  def initialize(arr)
    if Code.valid_pegs?(arr)
      @pegs = arr
      @pegs.map! {|char| char.upcase}
    else
      raise "error"
    end
  end

  def self.random(n)
    
    new_key = POSSIBLE_PEGS.keys
    
    Code.new(Array.new(n){new_key.sample})
  end

  def self.from_string(str)
    Code.new(str.split(""))
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  #PART 2

  def num_exact_matches(guess)   #thak notes   ask about each_index and (0...length)
    count = 0
    (0...guess.length).each  do | i|   
      if guess[i] == @pegs[i]
        count += 1
      end
    end
    count 
  end

  # def num_exact_matches(guess)
  #   count = 0
  #   guess.pegs.each_index do |i|
  #     if guess[i] == @pegs[i]
  #       count += 1
  #     end
  #   end
  #   count
  # end
#(["R", "G", "R", "B"] = pegs
  def num_near_matches(guess)
    (0...guess.length).count {|i| @pegs.include?(guess[i]) && guess[i] != @pegs[i]}
  end
 
  def ==(instance)
    self.pegs == instance.pegs
  end

end
