# code here!
require 'pry'

class School 

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end 

    def add_student(student_name, grade)
        #roster[grade] = student_name.split(",") 
        roster[grade] ||= []
        roster[grade] << student_name
#         if roster.has_key?(grade)  #SAME AS:  roster.[grade]
#             roster[grade] << student_name
#         else 
#             roster[grade] = student_name.split(",")
#         end 
    end 

    def grade(grade)
        roster[grade]
    end 

    def sort
        sorted = {}
        roster.each do |grade, name|
            sorted[grade] = name.sort
        end 
        sorted
    end
end 

# School
#   ::new
#     has an empty roster when initialized
#   #add_student
#     is able to add a student
#     is able to add multiple students to a class (grade)
#     is able to add students to different grades
#   #grade
#     is able to retreive students from a grade
#   #sort
#     is able to sort the students