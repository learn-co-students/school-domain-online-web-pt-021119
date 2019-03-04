require 'pry'

class School
  attr_accessor :name, :class, :roster, :student, :grade


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @student = student
    @grade = grade
    if roster.keys.include?(grade)
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_roster = {}

    @roster.each do |grade, student|
      sorted_roster[grade] = student.sort
    end
    sorted_roster
  end
end
