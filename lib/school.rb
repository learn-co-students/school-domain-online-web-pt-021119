# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end 
  
  #School.new ={}
  
  def add_student(name,grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(grade)
    @grade = grade
    @roster[grade]
  end
  
  def sort
    @roster.each{|grade,name| name.sort!}
   end
end 