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
