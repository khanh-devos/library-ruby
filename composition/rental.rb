require 'securerandom'

class Rental
  attr_reader :id
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @id = SecureRandom.hex
    @date = date

    @book = book
    book.rentals << self

    @person = person
    person.rentals << self
  end
end
