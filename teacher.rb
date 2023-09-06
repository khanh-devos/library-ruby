require './person'

class Teacher < Person
  def initialize(specialization) # rubocop:disable Style/OptionalBooleanParameter
    super()
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
