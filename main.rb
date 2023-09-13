#!/usr/bin/env ruby
require 'securerandom'
require 'json'

require './teacher'
require './student'
require './person'
require './decorators/basedecorator'
require './decorators/decorators'
require './decorators/nameable'
require './composition/book'
require './composition/classroom'
require './composition/rental'
require './SOLID/validation'
require './SOLID/booklist'
require './SOLID/clientlist'
require './SOLID/rentlist'

# this is our main runner

def start
  puts
  puts 'Please choose an option by enter a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person ID'
  puts '7 - Exit'

  gets.chomp.to_i
end

def main # rubocop:disable Metrics/MethodLength
  books = BookList.new
  clients = ClientList.new
  rents = RentList.new

  books.read_data
  clients.read_data
  rents.read_data

  100.times do
    opt = start
    case opt
    when 1
      books.show
    when 2
      clients.show
    when 3
      clients.add_student_or_teacher
    when 4
      books.add_book
    when 5
      rents.add_rent(books.books, clients.people)
    when 6
      rents.show(books.books)
    else
      books.write_data
      clients.write_data
      rents.write_data
      puts 'Thank you for using this app.'
      break
    end
  end
end

main
