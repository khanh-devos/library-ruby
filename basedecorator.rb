require './nameable'

module BaseDecorator 
  include Nameable
  attr_reader :person

  def initialize(person)
    super()
    @person = person
  end

  def correct_name
    @person.correct_name
  end
end
