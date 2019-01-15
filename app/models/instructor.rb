class Instructor

  attr_accessor :instructor

  @@all = []

  def initialize(instructor)
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

  def test_of_student(student,test_name)
    BoatingTest.all.find {|test| test.student.name == student && test.test_name == test_name}
  end

  def pass_student(student,test_name)
    if test_of_student(student,test_name).class == BoatingTest
      test_of_student(student,test_name).test_status = 'passed'
    else
      BoatingTest.new(Student.new(student),test_name,"passed",self)
    end
  end

  def fail_student(student,test_name)
    if test_of_student(student,test_name).class == BoatingTest
      test_of_student(student,test_name).test_status = 'failed'
    else
      BoatingTest.new(Student.new(student),test_name,"failed",self)
    end
  end
end
