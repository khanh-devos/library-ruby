require 'securerandom'
require_relative '../SOLID/serializeitem'
require 'json'

class Book
  include SerializationItem

  attr_reader :id
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @id = SecureRandom.hex
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    Rental.new(date, self, person)
  end
end


b1 = Book.new('book1', 'a1')
p JSON.dump b1