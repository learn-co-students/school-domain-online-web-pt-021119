class School
  attr_accessor :school_name
  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @roster.has_key?(grade) ? @roster[grade] << name : @roster[grade] = [name]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.sort
  end

end
