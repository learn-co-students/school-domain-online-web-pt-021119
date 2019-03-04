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
    new_hash =  {}
    @roster.each do |grade, students|
      new_hash[grade] = students.sort
    end
  new_hash
  end



end