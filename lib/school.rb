require 'pry'
class School 
  
  def initialize(school)
    @school = school
    @roster = {} 
  end 
  
  def school 
    @school 
  end
  
  def roster 
    @roster 
  end 
  
  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << name 
    else 
      @roster[grade] << name
    end 
    @roster 
  end 
  
  def grade(grade)
    @roster.fetch(grade)
  end 
  
  def sort
    @roster.each{|grade, students| roster[grade] = students.sort}
  end 
  
end 

