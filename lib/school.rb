require 'pry'
# code here!

class School
attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    roster_sorted = {}
    @roster.each do |grade, name|
        roster_sorted[grade] = name.sort
      end
      roster_sorted
  end

end
