class Player

    def get_move
        new_arr = []
        puts 'enter a position with coordinates separated with a space like `4 7`'
        input = gets.chomp
        new_arr = input.split(" ")
        new_arr.map! {|n| n.to_i}
    end

end
