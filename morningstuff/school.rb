require 'pry'

class School
  attr_reader :db

  def initialize(:name)
    @db = {}
  end

  def add(student, grade)
    db[grade] ||= []
    db[grade] << student
  end

  def grade(grade)
    db[grade] ||= []
  end

  def sort
    sorted = db.sort_by {|grade, students| students.sort! ; grade}
    Hash[sorted]
  end
end
  binding.pry