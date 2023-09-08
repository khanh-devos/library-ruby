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
require 'pry'

st1 = Student.new(20, "Philip", true)
b1 = Book.new('Lord of the ring', 'Bush')
st1.add_rental('2023-09-10', b1)

p st1.rentals.count

st1.pry