class Bootcamp
  
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new {|h,v| h[v] = Array.new}
    end
    def name 
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(teacher)
        @teachers << teacher
    end

    def enroll(student)
        if @students.length < @student_capacity
            @students << student
            return true
        end
        false
    end

    def enrolled?(student)
        @students.include?(student)
    end

    def student_to_teacher_ratio()
        (@students.length / @teachers.length ).to_i
    end

    def add_grade(student, grade)
        if enrolled?(student)
            @grades[student] << grade
            return true
        else
            return false
        end
    end

    def num_grades(student)
        @grades[student].length
    end

    def average_grade(student)
        if enrolled?(student)
            if @grades[student].length == 0
                return nil
            end
            return (@grades[student].sum / @grades[student].length).to_i
        else
            return nil
        end
    end


end
