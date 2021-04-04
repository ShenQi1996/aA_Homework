require "./list.rb"


class TodoBoard 

    def initialize(label)
        @to_do_board = List.new(label)

    end

    def get_command
        print "\nEnter a command: "
        cmd, *args = gets.chomp.split(" ")
        case cmd
        when 'mktodo'
            @to_do_board.add_item(args[0],args[1],args[2])
            return true
        when 'up'
            if args.length == 1
                @to_do_board.up(args[0].to_i,1)
                return true
            else
                @to_do_board.up(args[0].to_i,args[1].to_i)
                return true
            end
        when 'down'
            if args.length == 1
                @to_do_board.down(args[0].to_i,1)
                return true
            else
                @to_do_board.down(args[0].to_i,args[1].to_i)
                return true
            end
        when 'swap'
            @to_do_board.swap(args[0].to_i,args[1].to_i)
            return true
        when 'sort'
            @to_do_board.sort_by_date!
            return true
        when 'priority'
            @to_do_board.print_priority
            return true
        when 'print'
            if args.empty?
                @to_do_board.print
                return true
            else
                @to_do_board.print_full_item(args[-1].to_i)
                return true
            end
        when 'quit'
            return false
        else
            print "Sorry, that command is not recognized."
        end

        true
    end

    def run
        while self.get_command 
            
        end
    end
end

my_board = TodoBoard.new("salami")

my_board.run