require './person'

class Teacher < Person
  def initialize(id, age, specialization, name = 'Unknown', parent_permission = true) # rubocop:disable Style/OptionalBooleanParameter
    super(id, age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end

# t1 = Teacher.new(1, 43, 'Front-End')
# p t1.can_use_service?
