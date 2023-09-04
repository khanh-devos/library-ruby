require './person'

class Student < Person
  def initialize(id, age, classroom, name = 'Unknown', parent_permission = true) # rubocop:disable Style/OptionalBooleanParameter
    super(id, age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

s1 = Student.new(1, 20, 'Python', 'khnah', false)
p s1.can_use_service?
