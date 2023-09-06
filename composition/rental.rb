require 'securerandom'
require_relative './book'
require_relative '../person'


class Rental
    attr_reader :id, :book, :person
    attr_accessor :date

    def initialize(date, book, person)
        @id = SecureRandom.hex
        @date = date

        @book = book
        book.rentals << self
        
        @person = person
        person.rentals << self
    end

    def book=(book)
        @book = book
        book.rentals.push(self) unless book.rentals.include?(self)
    end

    def person=(person)
        @person = person
        person.rentals.push(self) unless person.rentals.include?(self)
    end
end