# code here!
class School
  attr_reader :roster
  def initialize(name)
    @name=name
    @roster={}
  end
  def add_student(name, grade)
   if @roster.has_key?(grade) == false
     @roster[grade]=[] 
     @roster[grade] << name
   else 
     @roster[grade]  << name
  end
end 
def grade(grade_number)
  @roster[grade_number]
end 
def sort 
  second_hash = {}
    @roster.each do |y, z|
      second_hash[y] = z.sort
    end
    second_hash
end
end 