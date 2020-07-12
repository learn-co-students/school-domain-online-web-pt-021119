# code here!
#writing a domain model that represents a School
#part 1: creat a class, school in the lib directory that can be initialized with a name

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

def add_student(student, grade)
  if @roster[grade] != nil
    @roster[grade] << student
  else
    @roster[grade] = [student]
  end
end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.each do |grade, student|
    student.sort!
  end
end

end
