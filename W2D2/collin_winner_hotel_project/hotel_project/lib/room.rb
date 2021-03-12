class Room
    attr_reader :capacity, :occupants
    def initialize(num)
        @capacity = num
        @occupants = Array.new()
    end
    def full?
        if @occupants.length < @capacity
            return false
        end
        true
    end

    def available_space
        @capacity - @occupants.length
    end

    def add_occupant(name)
        if !full?
            @occupants << name
            return true
        end
        false
    end

end
