class Item
    def self.valid_date?(date_string)
        date_arr = date_string.split("-")
       date_arr[0].length ==4 && date_arr[1].to_i <= 12 && date_arr[-1].to_i <= 31
    end
    attr_accessor :title, :deadline, :description 
    def initialize(title, deadline, description)
        @title = title 
         
        if Item.valid_date?(deadline)
            @deadline = deadline
        else  
            raise "That is not a valid date!"
        end
        @description = description
        @done = false 
    end

end

# items = Item.new("stuff", "2019-10-10", "Here is a description")

# p items.title 
# p items.description 
# p items.deadline 

# p items.title = "new_stuff"
# p items.title 
# p items.description = "here is a new description"
# p items.deadline = "1900-2-2"
# p items 