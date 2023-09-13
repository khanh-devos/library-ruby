require 'securerandom'
require_relative '../SOLID/serializeitem'

class Rental
  include SerializationItem

  attr_reader :id
  attr_accessor :date, :book_id, :person_id

  def initialize(date, book, person)
    @id = SecureRandom.hex
    @date = date

    @book_id = book.id
    book.rentals << self

    @person_id = person.id
    person.rentals << self
  end
end
