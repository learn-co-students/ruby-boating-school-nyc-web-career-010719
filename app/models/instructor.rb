class Instructor
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def boating_tests
    BoatingTest.all.select do |bt|
      bt.instructor == self
    end
  end

  def students
    boating_tests.map do |bt|
      bt.student
    end
  end

  def add_boating_test(student, name, status)
    BoatingTest.new(student, name, status, self)
  end

  def pass_student(student_name, test_name)
    #see if the instructor has a test with the given student name an test name
    match = boating_tests.find do |bt|
      bt.name == test_name && bt.student.name == student_name
    end

    # if there is a matching test, change status to passed
    # if there's not a matching test, create a new test
    if match
      match.status = "passed"
      return match
    else
      add_boating_test(Student.new(student_name), test_name, "passed")
    end

  end

  def fail_student(student_name, test_name)
    match = boating_tests.find do |bt|
      bt.name == test_name && bt.student.name == student_name
    end

    if match
      match.status = "failed"
      return match
    else
      add_boating_test(Student.new(student_name), test_name, "failed")
    end

  end



end #end of Instructor class
