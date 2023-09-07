require 'securerandom'
require './decorators/nameable'

class Person < Nameable
  attr_reader :id, :type
  attr_accessor :name, :age, :parent_permission, :rentals

  def initialize(type, age, name = 'Unknown', parent_permission = true) # rubocop:disable Style/OptionalBooleanParameter
    super()
    @type = type
    @id = rand(0..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
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

  def add_rental(date, book)
    Rental.new(date, book, self)
  end
end
