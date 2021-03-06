class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play
    until @game_over 
      take_turn
      system("clear")
    end
    game_over_message
    reset_game
  end

  def take_turn
      show_sequence
      new_input = require_sequence
      puts @sequence_length += 1
      round_success_message
      if new_input != @seq
        game_over_message
        @game_over = true
      end
  end

  def show_sequence
    add_random_color
    @seq.each do |ele|
      puts ele
    end
  end

  def require_sequence
    puts "Please enter the sequence"
    input = gets.chomp.split(" ") 
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    "keep going"
  end

  def game_over_message
    "game is over "
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
