# code here!

class School
  attr_reader :name, :roster 
 
  
  def initialize(name)
  @name = name
  @roster = {}
end

def add_student(name, level)
  roster[level] ||= []
  roster[level] << name
end
# def grade(level)
# roster.detect do |y, z|
#   if y == level
#     return z
#   end
# end
# end
def grade(level)
    roster.detect do |x, y| 
      if x == level
        return y 
      end 
    end 
  end 
  
  def sort
    second_hash = {}
    roster.each do |y, z|
      second_hash[y] = z.sort
    end
    second_hash
end
  
  
end