require "pry"

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
    sorted_hash = @roster.sort.to_h
    sorted_hash.each do |grade, students|
      sorted_hash[grade] = students.sort
    end
  end

end
