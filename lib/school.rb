# code here!

class School
  
  attr_accessor :roster, :school
  
  def initialize (school)
  @school = school
  @roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end
  
  def grade(num)
    @roster[num]
  end

  def sort
    @roster.keys.each do |grade|
      @roster[grade].sort!
    end
    @roster
  end
  
  
end
