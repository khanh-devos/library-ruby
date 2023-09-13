require 'rspec'
require 'securerandom'
require_relative '../composition/classroom'
require_relative '../student'

RSpec.describe Classroom do
  let(:classroom_label) { 'Mathematics' }
  let(:student_name) { 'John Doe' }

  # Create a new Classroom instance before each test
  before(:each) do
    @classroom = Classroom.new(classroom_label)
  end

  it 'should have a unique ID' do
    expect(@classroom.id).not_to be_nil
  end

  it 'should have a label' do
    expect(@classroom.label).to eq(classroom_label)
  end

  it 'should start with an empty list of students' do
    expect(@classroom.students).to be_empty
  end

  it 'should be able to add a student' do
    student = Student.new(12, student_name, false)
    @classroom.add_student(student)

    expect(@classroom.students).to include(student)
    expect(student.classroom).to eq(@classroom)
  end
end
