require_relative '../person'
require_relative '../composition/book'
require_relative '../composition/rental'

describe 'Person' do
  context 'Test class Person: ' do
    before :each do
      @name = 'John'
      @age = 15
      @person = Person.new('STUDENT', @age, @name)
    end

    it "The person name, age, type should be correspondind to 'John', 21, STUDENT" do
      expect(@person.name).to eql @name
      expect(@person.age).to eql @age
      expect(@person.type).to eql 'STUDENT'
    end

    it "Method can_use_service? and correct_name should be true and 'John'" do
      expect(@person.can_use_service?).to eql true
      expect(@person.correct_name).to eql @name
    end

    it 'Attr rentals should be empty and non-empty in correspodent to before and after using add_rental' do
      expect(@person.rentals.empty?).to eql true
      book1 = Book.new('book1', 'a1')
      @person.add_rental('today', book1)
      expect(@person.rentals.size).to eql 1
    end
  end
end
