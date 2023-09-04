class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(id, age, name = 'Unknown', parent_permission = true) # rubocop:disable Style/OptionalBooleanParameter
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def of_age?
    (@age >= 18)
  end

  public

  def can_use_service?
    of_age? || @parent_permission
  end
end

# p1 = Person.new(1, 13, 'k1', false)
# puts p1.can_use_service?
