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
    if current_player_name == @name1

      len = cups[start_pos].length
      len.times { cups[start_pos].pop }
      i = 1
      len.times do 
        if i + start_pos > 6
          new_pos = (i + start_pos) % 6
          cups[new_pos] << :stone
        else
          cups[start_pos+i] << :stone
        end
        i += 1
      end
      next_turn(i+start_pos)
    end
    render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    # # if cups[ending_cup_idx].empty?
    # #   return :switch
    # else
    #   return :prompt
    # end
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
