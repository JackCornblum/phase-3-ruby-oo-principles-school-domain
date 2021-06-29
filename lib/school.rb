# code here!
require "pry"

class School
    attr_accessor :roster, :name

    def initialize(nameArg)
        @name = nameArg
        @roster = {}
    end

    def add_student(student, grade)
        @roster[grade] ||= []
        # binding.pry
        @roster[grade] << student
        # binding.pry
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = {}
        @roster.each do |grade, student|
            sorted[grade] = student.sort
        end
        sorted
    end
end

school = School.new("Bayside High School")
school.add_student("Jack", 9)
school.add_student("Ben", 9)
school.add_student("Larry", 9)
school.add_student("Alex", 9)

# school.send(:add_student=, "Jack", 9)
# school.send(:add_student=, "Ben", 9)

binding.pry


0