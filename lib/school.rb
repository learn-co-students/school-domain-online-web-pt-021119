class School
    def initialize(name)
        @name=name
        @roster={}
    end

    def add_student(name, grade)
        @roster[grade]=[] if @roster.keys.include?(grade)==false
        @roster[grade]<<name
    end
    
    def roster
        @roster
    end
    
    def grade(grade)
        @roster[grade]
    end
    
    def sort
        @roster.transform_values{|v| v.sort}
    end
        
    
end