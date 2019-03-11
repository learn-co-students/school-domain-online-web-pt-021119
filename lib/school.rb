require 'pry'
class School
      attr_accessor :roster

  def initialize(name)
  @name = name 
  @roster = {}
  end
  
  def add_student(add_student, grade)
    if @roster.has_key?(grade)
    @roster[grade] << add_student
    else
  @roster[grade] = []
      @roster[grade] << add_student
      end
  end 

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      #binding.pry
      @roster[grade] = students.sort
      #binding.pry
    end
  
  end



end