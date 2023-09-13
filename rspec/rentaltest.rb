require 'rspec'
require 'securerandom'
require_relative '../SOLID/serializeitem'
require_relative '../composition/book'
require_relative '../composition/rental'
require_relative '../student'

RSpec.describe Rental do
  let(:date) { '2023, 9, 13' }
  let(:book) { Book.new('The Great Gatsby', 'F. Scott Fitzgerald') }
  let(:person) { Student.new(21, 'John Doe', false) }

  # Create a new Rental instance before each test
  before(:each) do
    @rental = Rental.new(date, book, person)
  end

  it 'should have a unique ID' do
    expect(@rental.id).not_to be_nil
  end

  it 'should have a date' do
    expect(@rental.date).to eq(date)
  end

  it 'should be associated with a book' do
    expect(@rental.book_id).to eq(book.id)
    expect(book.rentals).to include(@rental)
  end

  it 'should be associated with a person' do
    expect(@rental.person_id).to eq(person.id)
    expect(person.rentals).to include(@rental)
  end
end
