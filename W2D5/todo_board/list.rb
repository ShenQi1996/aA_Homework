require "./item.rb"

class List 
    attr_accessor :label 
    def initialize(label)
        @label = label
        @items = Array.new()
    end

    def add_item(title, deadline, description = "")
        if Item.valid_date?(deadline)
            @items << Item.new(title, deadline, description)
            return true
        end
        false
    end

    def size
        @items.length
    end

    def valid_index?(index)
        @items.length >= index + 1 && index >= 0
    end

    def swap(index_1, index_2)
        if self.valid_index?(index_1) && self.valid_index?(index_2)
            @items[index_1], @items[index_2] = @items[index_2], @items[index_1]
            return true 
        end
        false 
    end

    def [](index)
        if self.valid_index?(index)
            @items[index]
        else   
            return nil
        end
    end

    def priority
        @items.shift
    end

    def print
        @items.each_with_index do |item, idx|
            puts "#{idx} | | #{item.title} | | #{item.deadline}  " 
        end
    end

    def print_full_item(index)
        if self.valid_index?(index)
            p "#{@items[index].title} | #{@items[index].description} | #{@items[index].deadline} " 
        end
    end

    def print_priority 
         self.print_full_item(0)
    end
    
    def up(index, amount = 1)
        if index == 0
            puts "Already at the top"
            return false
        end
        if self.valid_index?(index) 
            amount.times do |i|
                self.swap(index-i,(index-i)-1)
            end
            return true
        end
    end

    def down(index, amount = 1)
        if index == self.size-1
            puts "Already at the bottom"
            return false
        end
        if self.valid_index?(index) 
            amount.times do |i|
                self.swap(index+i,(index+i)+1)
            end
            return true
        end
    end

    def sort_by_date!
        @items.sort_by! {|item| item.deadline}
    end
end

# items = Item.new("stuff", "2019-10-10", "Here is a description")
# list_1 = List.new("sky")
# list_1.add_item("stuff", "2019-10-08", "Here is a description")
# list_1.add_item("hahahaASDASDAS_2", "2019-10-04", "Here is a descriptionasdasdasdasd")
# list_1.add_item("wqewqe", "2019-10-24", "Heasdasddescriptiasdasd")
# # p list_1.valid_index?(0)
# # p list_1.valid_index?(1)
# # p list_1.valid_index?(5)
# # p list_1.items
# # list_1.swap(0,1)
# # puts "______________________________"
# # p list_1.items
# # p items 
# # p list_1[0]
# # p list_1[1]
# # list_1.down(0, 2)
# list_1.sort_by_date!

# p list_1