class Instructor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(first_name, name)
    pass = BoatingTest.all.find{|test| test.student.first_name == first_name && test.name == test.name}
    pass
    if pass
      pass.test_status = "passed"
    else
      student = Student.all.find{|student| student.first_name = first_name}
      BoatingTest.new(student, name, "passed", self)
    end
  end

  def fail_student(first_name, name)
    fail = BoatingTest.all.find{|test| test.student.first_name == first_name && test.name == test.name}
    fail
    if fail
      fail.test_status = "failed"
    else
      student = Student.all.find{|student| student.first_name = first_name}
      BoatingTest.new(student, name, "failed", self)
    end
  end

end
