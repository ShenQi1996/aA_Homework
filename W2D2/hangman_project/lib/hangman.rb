class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  attr_reader :guess_word, :attempted_chars, :remaining_incorrect_guesses
  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = Array.new()
    @remaining_incorrect_guesses  = 5
  end

  def already_attempted?(char)
    if @attempted_chars.include?(char)
      return true
    end
    false
  end

  def get_matching_indices(char)
    new_index = []
    @secret_word.each_char.with_index do |ele, i|
      if ele == char
        new_index << i
      end
    end
    new_index
  end

  def fill_indices(char, index)
    index.each do |i|
      @guess_word[i] = char
    end
  end

  #PART2

  def try_guess(char)
    if already_attempted?(char)
      puts "that has already been attempted"
      return false
    else
      @attempted_chars << char
      if get_matching_indices(char).length == 0
        @remaining_incorrect_guesses -= 1
      else
        fill_indices(char, get_matching_indices(char))
      end
      return true
    end
  end

  def ask_user_for_guess
    puts 'Enter a char:'
    input = gets.chomp
    try_guess(input)
  end

  def win?
    if @secret_word == @guess_word.join("")
      puts "WIN"
      return true
    end
    false
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
    end
    false
  end 

  def game_over?
    if self.win? || self.lose?
      puts "#{@secret_word}"
      return true
    end
    false
  end

end
