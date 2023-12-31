require './person'
require 'json'

class Student < Person
  attr_reader :classroom

  def initialize(age, name, parent_permission, classroom = 'unknown')
    super('STUDENT', age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
