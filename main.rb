#!/usr/bin/env ruby
require 'securerandom'

require './teacher'
require './student'
require './person'
require './decorators/basedecorator'
require './decorators/decorators'
require './decorators/nameable'
require './composition/book'
require './composition/classroom'
require './composition/rental'
require './app'

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

def main
  app = App.new

  100.times do
    opt = start
    if [1, 2, 3, 4, 5, 6].include?(opt)
      app.run(opt)
    else
      puts 'Thank you for using this app.'
      break
    end
  end
end

main
