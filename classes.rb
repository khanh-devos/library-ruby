class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(id, age, name = 'Unknown', parent_permission = true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def of_age?
    (@age >= 18)
  end

  public

  def can_use_service?
    of_age? || @parent_permission
  end
end

class Student < Person
  def initialize(id, age, classroom, name = 'Unknown', parent_permission = true)
    super(id, age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

class Teacher < Person
  def initialize(id, age, specialization, name = 'Unknown', parent_permission = true)
    super(id, age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end

p1 = Person.new(1, 23)
s1 = Student.new(1, 20, 'Python')
t1 = Teacher.new(1, 43, 'Front-End')
p p1.can_use_service?
