require 'pry'
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_students = {}
        roster.each do |student_grade, students|
            #binding.pry
            sorted_students[student_grade] = students.sort
        end
        sorted_students
    end
end