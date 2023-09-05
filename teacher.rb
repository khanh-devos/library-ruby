require './person'

class Teacher < Person
  def initialize(age, specialization, name = 'Unknown', parent_permission = true) # rubocop:disable Style/OptionalBooleanParameter
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end

# t1 = Teacher.new(43, 'Front-End')
# p t1.can_use_service?
