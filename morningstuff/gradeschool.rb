require 'pry'
class School
  attr_accessor :name, :db
  def initialize(name)
    @name = name
    @db = {} # this is an empty hash but a hash must take keys and values
  end

  def add(student,grade)
    db[grade] = db[grade] || [] # because hash must take key and value we fist append an array if db[grade] doesnt exist - if it does then use the same keys and story values
    db[grade] << student
  end

  def grade(grade)
    @db.sort_by(grade)
  end

end

binding.pry
