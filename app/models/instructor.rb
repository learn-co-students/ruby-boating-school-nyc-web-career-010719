class Instructor

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def boating_tests
    BoatingTest.all.select {|boatingtest| boatingtest.instructor == self}
  end

  def students
    boating_tests.map {|boatingtest| boatingtest.student}
  end

  def pass_student(student, test)
    if test.student == student && test.instructor == self
      test.status = "passed"
      test
    else
      BoatingTest.new(student, test, "passed", self)
    end
  end

  def fail_student(student, test)
    if test.student == student && test.instructor == self
      test.status = "failed"
      test
    else
      BoatingTest.new(student, test, "failed", self)
    end
  end

end
