require 'json'
require_relative '../composition/book'
require_relative 'validation' 
require_relative 'serializearray'


class BookList
  include SerializationArray

  attr_accessor :books

  def initialize()
    @books = []
    @input = InputValidation.new
  end

  def book_attr
    title = @input.input_string('Title:')
    author = @input.input_string('Author:')
    [title, author]
  end

  def add_book
    title, author = book_attr
    book = Book.new(title, author)
    puts 'Book created successfully'
    @books << book
  end

  def show
    @books.each { |b| puts "Title: \"#{b.title}\"; Author: \"#{b.author}\"" }
  end


  # SERIALIZATION
  def take_array
    @books
  end

  def create_item
    Book.new('','')
  end

  def add_list(arr)
    @books = arr
  end
end


# books1 = BookList.new()
# b1 = Book.new('b1', 'a1')
# b2 = Book.new('b2', 'a2')
# books1.books = [b1, b2]
# books1.write_data

# books2 = BookList.new()
# books2.read_data
# books2.show
