require 'student'
require 'course'

# modify a real class as mock

describe 'Mocks' do
  it 'has_finished?' do
    # setup
    student = Student.new
    course = Course.new
    
    # verify
    expect(student).to receive(:has_finished?)
    
    # exercise
    student.has_finished?(course)
  end

  it 'args' do
    # setup
    student = Student.new
    
    # verify
    expect(student).to receive(:foo).with(123)
    
    # exercise
    student.foo(123)
  end

  it 'repetição' do
    # setup
    student = Student.new
    
    # verify
    expect(student).to receive(:foo).with(123).twice
    expect(student).to receive(:foo).with(123).at_least(:once)
    
    # exercise
    student.foo(123)
    student.foo(123)

    student.foo(123)
  end
    
  it 'retorno' do
    # setup
    student = Student.new
    
    # verify
    expect(student).to receive(:foo).with(123).and_return(true)
    
    # exercise
    student.foo(123)
  end
end

