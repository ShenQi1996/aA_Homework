class Stack 
    def initialize
        @stack = Array.new()
    end

    def push(el)
        @stack << el
    end

    def pop
       tem = @stack[-1]
       @stack = @stack[0..-2]
       tem
    end

    def peek
        @stack[-1]
    end

end

# stack_1 = Stack.new

# p stack_1
# p"_______before push___________"
# stack_1.push(1)
# stack_1.push(5)
# stack_1.push(9)
# stack_1.push(4)

# p stack_1
# p "______after push________"

# p stack_1.pop
# p "___________after pop_________"
# p stack_1

# p stack_1.peek


class Queue 
    def initialize
        @queue = Array.new()
    end

    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
       tem = @queue[0]
       @queue = @queue[1..-1]
       tem
    end

    def peek
        @queue[0]
    end

end


# q_1 = Queue.new

# p q_1

# puts "_______1____"
# q_1.enqueue(1)
# q_1.enqueue(2)
# q_1.enqueue(3)
# q_1.enqueue(4)
# p q_1
# puts "_______2____"
# p q_1.dequeue
# p q_1
# puts "_______3____"
# p q_1.peek
# puts "_______4____"

class Map 

    def initialize
        @map = Array.new
    end

    def set(key,value)
        new_pair = @map.index {|keys| keys[0] == key}
        if new_pair
            @map[new_pair][1] = value
        else
            @map.push([key,value])
        end
        value
    end

    def get(key)
        @map.each {|pair| return pair[1] if pair[0] == key}
        nil
    end

    def delete(key)
        value = get(key)
        @map.select {|pair|  pair[0] != key}
        value
    end

    def show
        deep_dup(@map)
    end

    def deep_dup(map)
        map.map do |el| 
            if el.is_a?(Array)  
                deep_dup(el) 
            else
                el 
            end
        end
    end  


end

# p map_1 = Map.new
# map_1.set("y","x")
# map_1.set("x","x")
# map_1.set("z","x")
# p map_1