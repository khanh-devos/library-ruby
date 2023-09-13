require_relative '../student'
require_relative '../decorators/decorators'

describe 'Decorators' do
  context 'Test the class Decorators: ' do
    before :each do
      @name = 'john witch II'
      @student = Student.new(21, @name, false)
    end

    it 'CapitalizeDecorator will capitalize the student name' do
      deco_student = CapitalizeDecorator.new(@student)
      expect(deco_student.correct_name).to eql @name.capitalize
    end

    it 'TrimmerDecorator will limit the student name length <= 10' do
      deco_student = TrimmerDecorator.new(@student)
      expect(deco_student.correct_name.length).to be <= 10
    end
  end
end
