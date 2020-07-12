
class School

  attr_accessor :roster
  # attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.has_key?(grade) == false
      @roster[grade] = [student]
    else
      @roster[grade].push(student)
    end
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.keys.each do |variable|
      @roster[variable].sort!
    end
    @roster
  end

end
