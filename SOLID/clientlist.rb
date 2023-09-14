class ClientList
  include SerializationArray
  attr_accessor :people

  def initialize()
    @people = []
    @input = InputValidation.new
  end

  def student_attr
    age = @input.input_positive('Age: ')
    name = @input.input_string('Name: ')
    parent_permission = @input.input_yes_no('Has parent permission? [Y/N]:')
    [age, name, parent_permission]
  end

  def add_student
    age, name, parent_permission = student_attr
    student = Student.new(age, name, parent_permission)
    puts 'Student created successfully'
    @people << student
  end

  def teacher_attr
    age = @input.input_positive('Age:')
    name = @input.input_string('Name:')
    specialization = @input.input_yes_no('Specialization:')
    [age, name, specialization]
  end

  def add_teacher
    age, name, specialization = teacher_attr
    teacher = Teacher.new(age, name, specialization)
    puts 'Teacher created successfully'
    @people << teacher
  end

  def add_student_or_teacher
    print 'Do u wanna create a student(1) or teacher(2)? [Input the number]: '
    opt3 = @input.input_positive
    case opt3
    when 1
      add_student
    when 2
      add_teacher
    end
  end

  def show
    @people.each { |per| puts "[#{per.type}] Name: #{per.name}, ID: #{per.id}, Age: #{per.age} " }
  end

  # SERIALIZATION
  def take_array
    @people
  end

  def create_item
    Person.new('', '')
  end

  def add_list(arr)
    @people = arr
  end
end
