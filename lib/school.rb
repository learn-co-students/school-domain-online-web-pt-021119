# code here!
class School 
  #attr_accessor :roster
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  #def roster #from supp lecture - what's this doing?
  #  @roster.dup
  #end
  
  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name #k/v pair exists, so adding to name array
    else 
      @roster[grade] = [name] #k/v pair doesn't exist yet, so creating grade with new array containing names
    end
  end
  
  def grade(grade)
    @roster.each do |grade_k, names_v|
      if grade_k == grade 
        return names_v
      end
    end
  end
  
  def sort 
    @roster.each do |grade_k, names_v|
      names_v.sort! #use .sort! so it sorts the array given, rather than .sort which would return a new, sorted array
    end
    return @roster
  end
  
end