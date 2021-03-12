class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
  attr_reader :guess_word, :attempted_chars, :remaining_incorrect_guesses
  def self.random_word
    DICTIONARY.sample
  end

  def initialize()
    @secret_word = Hangman.random_word  
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars  = Array.new()
    @remaining_incorrect_guesses = 5
  end

  def already_attempted?(char)
    if @attempted_chars.include?(char)
      return true
    end
    false
  end

  def get_matching_indices(char)
    indices = []

    @secret_word.each_char.with_index do |el, i|
      if el == char
        indices << i
      end
    end
    indices
  end

  def fill_indices(char, arr)
    arr.each do |i|
      @guess_word[i] = char
    end
  end
  
  def try_guess(char)
    if already_attempted?(char)
      print "that has already been attemped"
      false
    else
      @attempted_chars << char
      if get_matching_indices(char).length == 0
        @remaining_incorrect_guesses -= 1
      else
        fill_indices(char, get_matching_indices(char))
      end
      true
    end
  end

  def ask_user_for_guess
    print "Enter a char:"
    user_in = gets.chomp
    try_guess(user_in)
  end


  def win?
    if @guess_word.join("") == @secret_word
      print "WIN\n"
      true
    else
      false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      print "LOSE\n"
      true
    else
      false
    end
  end

  def game_over?
    if win? || lose?
      print @secret_word+"\n"
      return true
    else
      return false
    end
  end

end
