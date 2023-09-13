require 'rspec'
require 'securerandom'

# Include the Classroom class definition here (or require it from another file)

RSpec.describe Classroom do
  let(:classroom_label) { "Mathematics" }
  let(:student_name) { "John Doe" }

  # Create a new Classroom instance before each test
  before(:each) do
    @classroom = Classroom.new(classroom_label)
  end

  it "should have a unique ID" do
    expect(@classroom.id).not_to be_nil
  end

  it "should have a label" do
    expect(@classroom.label).to eq(classroom_label)
  end

  it "should start with an empty list of students" do
    expect(@classroom.students).to be_empty
  end

  it "should be able to add a student" do
    student = Student.new(student_name)
    @classroom.add_student(student)
    
    expect(@classroom.students).to include(student)
    expect(student.classroom).to eq(@classroom)
  end
end

# Define the Student class if it's not already defined
class Student
  attr_accessor :classroom
  attr_reader :name

  def initialize(name)
    @name = name
    @classroom = nil
  end
end
