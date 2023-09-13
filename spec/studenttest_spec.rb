require_relative '../student'
require_relative '../composition/classroom'

describe 'STUDENT' do
  context 'Test the class Student: ' do
    before :each do
      @name = 'st1'
      @age = 15
      @permission = false
      @student = Student.new(@age, @name, @permission)
    end

    it 'test all attrs' do
      expect(@student.name).to eql @name
      expect(@student.age).to eql @age
      expect(@student.parent_permission).to eql @permission
      expect(@student.type).to eql 'STUDENT'
      expect(@student.classroom).to eql 'unknown'
    end

    it 'Method play_hooky' do
      expect(@student.play_hooky).to eql '¯(ツ)/¯'
    end

    it 'Method classroom=' do
      class1 = Classroom.new('History')
      @student.classroom = (class1)
      expect(@student.classroom).to eql class1
    end
  end
end
