require_relative '../composition/book'
require_relative '../student'
require_relative '../composition/rental'


describe "Test_Book" do 
  context "When testing the Book class: " do
    before :each do
      @book = Book.new('book 1', 'author 1')
    end
  
    it "title should be 'book 1'" do 
        expect(@book.title).to eq 'book 1'
    end

    it "author should be 'author 1'" do 
        expect(@book.author).to eq 'author 1'
    end

    it "rental should be a type of array and is empty " do 
        expect(@book.rentals).to eq []
        expect(@book.rentals.empty?).to eq true
    end

    it "rentals should contain 1 person" do
        student = Student.new(21, 'khanh', true)
        @book.add_rental('today', student)
        expect(@book.rentals.size).to eq 1
    end
    
  end
end