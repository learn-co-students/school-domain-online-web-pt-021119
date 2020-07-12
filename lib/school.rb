class School

def initialize(neww)
  @name = neww
  @roster = {}
end

def name
  @name
end

def roster
  @roster
end

def add_student(stu, grade)
  if @roster[grade].nil?
    arr = []
    arr << stu
    @roster[grade] = arr
else
  @roster[grade] << stu
end
end

def grade(grad)
  @roster[grad]
end

def sort
  @roster.each do
    |key, value| value.sort!
  end
end


end
