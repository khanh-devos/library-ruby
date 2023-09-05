require './nameable'
require 'securerandom'

class Person
  include Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission = true) # rubocop:disable Style/OptionalBooleanParameter
    @id = SecureRandom.hex
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

  def correct_name
    @name
  end
end

# p1 = Person.new(1, 13)
# p1.name = 'kadsfhasd'
# puts p1.name
