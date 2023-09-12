require './person'

class Teacher < Person
  attr_reader :specialization

  def initialize(age, name, specialization)
    super('TEACHER', age, name)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
