class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){Array.new()} 
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0..5).each do |i|
      4.times {cups[i] << :stone}
    end
    (7..12).each do |i|
      4.times{ cups[i] << :stone}
    end
  end

  def valid_move?(start_pos)
    raise ArgumentError.new ("Invalid starting cup" ) if start_pos > 13
    raise ArgumentError.new ("Starting cup is empty" ) if cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
      stack_stones = cups[start_pos]
      cups[start_pos] = []
      index = start_pos
      while !stack_stones.empty?
        index += 1
        index = 0 if index > 13
        if index == 6 && current_player_name == @name1
          cups[index] << stack_stones.pop
        elsif index == 13 && current_player_name == @name2
          cups[index] << stack_stones.pop
        else
          cups[index] << stack_stones.pop
        end
      end
    render
    next_turn(index)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if cups[ending_cup_idx].count == 1
      return :switch
    elsif ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    else
      return ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
