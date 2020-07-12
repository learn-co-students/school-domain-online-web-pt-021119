# code here!
class School
  attr_accessor :schoolname, :name
  # attr_reader :roster

  def initialize(schoolname)
    @schoolname = schoolname
    @roster = {}
  end

def roster
  @roster
end

def add_student(name, grade)
  @name = name
  @grade = grade

  if @roster[@grade] == nil
    @roster[@grade] = []
    @roster[@grade] << name
  else
    @roster.each do |gradesymbol, namevalue|
    if gradesymbol == grade
      namevalue.push(name)
  end
  end
  end



#   @roster[@grade] = []
#   @roster[@grade] << name

#   @roster.each do |gradesymbol, namevalue|
#     if gradesymbol == grade
#       namevalue.push(name)
#     else
#       @roster[@grade] = []
#       @roster[@grade] << name
#   end
#   end
end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.each do |gradesymbol, namevalue|
    puts "#{namevalue} unsorted"
    namevalue.sort!()
    puts "#{namevalue} sorted"
  end
end


end
