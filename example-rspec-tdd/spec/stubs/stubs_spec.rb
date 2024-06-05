require 'student'
require 'course'

# modify a real class as mock

describe 'Stub' do
  it 'has_finished?' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)

    course_finished = student.has_finished?(course)

    expect(course_finished).to be true
  end
  
  it 'Argumentos dinâmicos' do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      if arg == :hello 
        'Olá'
      elsif arg == :hi 
        'Hi!'
      end
    end

    expect(student.foo(:hello)).to eq('Olá')
    expect(student.foo(:hi)).to eq('Hi!')
  end
  
  it 'Qualquer instancia' do
    student = Student.new

    allow_any_instance_of(Student).to receive(:foo).and_raise(RuntimeError)

    expect{ student.foo(:hello) }.to raise_error(RuntimeError)
  end
end
