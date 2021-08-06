# code here!
class School
    attr_accessor :roster
    # init with roster
    def initialize(roster)
        @roster = {}

        
    end
    # add student method
    def add_student(student, grade)
        # uses the or equals operator
        @roster[grade] ||= []
        @roster[grade] << student
        
    end
    # method to retrieve students from a grade
    def grade(grade)
        @roster[grade]        
    end
    # sorts student
    def sort
        @roster.sort_by {|k, v| v}.to_h
    end
end