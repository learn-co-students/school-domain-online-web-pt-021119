class School
  
  attr_accessor :roster, :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  #def roster
    #{}
  #end
  
  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end
  
  def grade(student)
    roster[student]
  end
  
  def sort
    sorted_students = {}
    roster.each do |grade, name|
    sorted_students[grade] = name.sort
    end
    sorted_students
  end
end


#ASK TOMMOROW