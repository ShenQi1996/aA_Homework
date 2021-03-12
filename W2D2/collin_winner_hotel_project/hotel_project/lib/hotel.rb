require_relative "room"

class Hotel
    attr_reader :rooms
    def initialize(name, hash)
        @name = name
        @rooms = Hash.new(0)
        hash.each do |k,v|
            @rooms[k] = Room.new(v)
        end
    end

    def name
        words = @name.split(" ")
        new_words = []
        words.each {|word| new_words << word.capitalize}
        
        new_words.join(" ")
    end

    def room_exists?(room_name)
         @rooms.has_key?(room_name)
    end


    def check_in(person, room_name)
        if room_exists?(room_name)
            if @rooms[room_name].add_occupant(person)
                p "check in successful"
            else
                p "sorry, room is full"
            end
        else
            p "should print 'sorry, room does not exist"
        end
    end
    
    def has_vacancy?
        @rooms.one? {|k, v|@rooms[k].full?}
    end

    def list_rooms
        @rooms.each do |room_name, capacity|
            puts room_name + ".*"+ rooms[room_name].available_space.to_s
        end
    end
end
