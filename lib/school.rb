class School
  
  attr_reader :school_name, :roster
  
   
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end 
  
  def add_student (student, grade)
    if @roster.key?(grade) 
      @roster[grade] << student  
    else                          
      @roster[grade] = [student]   
    end
  end 
  
  def grade (grade)
    @roster[grade]
  end 
  
  def sort 
    sorted_hash = @roster.sort.to_h
    sorted_hash.each do |grade, students|
      sorted_hash[grade] = students.sort
    end
  end 
  
end

  