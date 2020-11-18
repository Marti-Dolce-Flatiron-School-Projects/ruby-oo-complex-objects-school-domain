# frozen_string_literal: true

# Author: Martinique Dolce
# Course: Flatiron School 2020, November 9 - 20201, April 2021
# Contact: me@martidolce.com | https://modis.martidolce.com
#
#
class School
  attr_accessor :name, :roster

  def initialize(name) #has an empty roster when initialized
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
	  #  is able to add a student
	  #  is able to add multiple students to a class (grade)
	  #  is able to add students to different grades
    @roster[grade] ? (@roster[grade] << student_name) : @roster[grade] = [student_name]

  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = {}
    @roster.sort.each { |grade, name_array| sorted_hash[grade] = name_array.sort }
    sorted_hash
  end
end
