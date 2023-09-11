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

def main
  app = App.new
  app.run
end

main
