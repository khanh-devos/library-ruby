require_relative '../teacher'

RSpec.describe Teacher do
  # Create a sample teacher object for testing
  let(:teacher) { Teacher.new(30, 'John Doe', 'Mathematics') }

  describe '#initialize' do
    it 'initializes a Teacher object with age, name, and specialization' do
      expect(teacher).to be_instance_of(Teacher)
      expect(teacher.age).to eq(30)
      expect(teacher.name).to eq('John Doe')
      expect(teacher.specialization).to eq('Mathematics')
    end
  end

  describe '#can_use_service?' do
    it 'returns true, indicating that the teacher can use the service' do
      expect(teacher.can_use_service?).to be(true)
    end
  end
end
