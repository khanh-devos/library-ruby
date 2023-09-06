require 'securerandom'

class Classroom
  attr_reader :id, :students
  attr_accessor :label

  def initialize(label)
    @id = SecureRandom.hex
    @label = label
    @students = []
  end

  def add_student(student)
    @students.push(student)
    student.classroom = self
  end
end
