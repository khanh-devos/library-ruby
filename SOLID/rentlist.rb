class RentList
  attr_reader :rents

  def initialize
    @rents = []
    @input = InputValidation.new
  end

  def select_book(books)
    puts 'Select a book from the following list by number'
    books.each_with_index { |b, i| puts "#{i + 1}) Title: #{b.title}, Author: #{b.author}" }
    id = @input.input_positive('')
    books[id - 1]
  end

  def add_renter(people)
    puts 'Select a person from the following list by number (not id)'
    people.each_with_index { |per, i| puts "#{i + 1}) [#{per.type}] Name: #{per.name}, ID: #{per.id}, Age: #{per.age}" }
    id = @input.input_positive('')
    people[id - 1]
  end

  def date_rent
    @input.input_string('Date:')
  end

  def add_rent(books, people)
    book = select_book(books)
    person = add_renter(people)
    date = date_rent

    rent = Rental.new(date, book, person)
    puts 'Rental created successfully'
    @rents << rent
  end

  def show
    id = @input.input_positive('ID of person:')
    @rents.each do |rent|
      puts "Date: #{rent.date}, Book \"#{rent.book.title}\" by \"#{rent.book.author}\"" if rent.person.id == id
    end
  end
end
