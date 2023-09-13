require 'rspec'
require 'securerandom'
require_relative '../SOLID/serializeitem'
require_relative 'book'  # Assuming you have a Book class defined
require_relative 'person' # Assuming you have a Person class defined

# Include the Rental class definition here (or require it from another file)

RSpec.describe Rental do
  let(:date) { Date.new(2023, 9, 13) } # Replace with an appropriate date
  let(:book) { Book.new("The Great Gatsby", "F. Scott Fitzgerald") } # Replace with your Book initialization
  let(:person) { Person.new("John Doe") } # Replace with your Person initialization

  # Create a new Rental instance before each test
  before(:each) do
    @rental = Rental.new(date, book, person)
  end

  it "should have a unique ID" do
    expect(@rental.id).not_to be_nil
  end

  it "should have a date" do
    expect(@rental.date).to eq(date)
  end

  it "should be associated with a book" do
    expect(@rental.book_id).to eq(book.id)
    expect(book.rentals).to include(@rental)
  end

  it "should be associated with a person" do
    expect(@rental.person_id).to eq(person.id)
    expect(person.rentals).to include(@rental)
  end
end

# Define the Book and Person classes if they're not already defined
class Book
  attr_reader :id, :rentals

  def initialize(title, author)
    @id = SecureRandom.hex
    @title = title
    @author = author
    @rentals = []
  end
end

class Person
  attr_reader :id, :rentals

  def initialize(name)
    @id = SecureRandom.hex
    @name = name
    @rentals = []
  end
end
