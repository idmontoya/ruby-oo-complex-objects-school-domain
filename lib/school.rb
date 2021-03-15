# code here!
class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end
    def roster
        @roster
    end
    def add_student(students, grade)
        roster[grade] ||= []
        roster[grade] << students
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        student_hash = {}
        @roster.each do |grade, students|
            student_hash[grade] = students.sort
        end
        student_hash
    end

end