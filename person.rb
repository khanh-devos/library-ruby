require './decorators/nameable'
require 'securerandom'

class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :name, :age, :parent_permission

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = SecureRandom.hex
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
end
