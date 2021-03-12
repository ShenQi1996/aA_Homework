require "employee"

class Startup

    attr_accessor  :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries)
        @name = name 
        @funding = funding
        @salaries = salaries
        @employees = Array.new()
    end

    def valid_title?(title)
        @salaries.has_key?(title)
    end
    
    def >(startup)
        self.funding > startup.funding
    end

    def hire(e_name, title)
        employee = Employee.new(e_name, title)
        if valid_title?(title)
            @employees << employee
        else
            raise "error"
        end
    end

    def size
        @employees.length
    end

    def pay_employee(employee)
        if  @salaries[employee.title] < @funding
            employee.pay(@salaries[employee.title])
            @funding -= @salaries[employee.title]
        else
            raise "Not enough funding!"
        end
    end

    def payday
        @employees.each do |ele|
            pay_employee(ele)
        end
    end

    def average_salary
        new_arr = []
        @employees.each do |ele|
            new_arr << @salaries[ele.title]
        end
        new_arr.sum / new_arr.length
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startup)
        self.funding += startup.funding
        startup.salaries.each do |k,v|
            if !self.salaries.has_key?(k)
                self.salaries[k] = v
            end
        end
        startup.employees.each do |ele|
            self.employees << ele
        end
        startup.close
    end
end

