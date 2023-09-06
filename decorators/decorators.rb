require_relative 'basedecorator'
require_relative '../person'

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @person.correct_name.capitalize
  end
end

class TrimmerDecorator < BaseDecorator
  def correct_name
    @person.correct_name.strip[0, 10]
  end
end

person = Person.new(22, 'maximilianus')
p person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
