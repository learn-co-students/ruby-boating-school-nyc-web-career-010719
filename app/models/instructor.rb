class Instructor
  attr_reader :name

  @@all = []

  ############## CLASS METHODS ##############
  def self.all
    @@all
  end

  ############## INSTANCE METHODS ##############
  def initialize(name)
    @name = name

    @@all << self
  end

  def boating_tests
    BoatingTest.all.select{|test| test.instructor == self}
  end

  def students
    self.boating_tests.map{|test| test.student}
  end

  def pass_student(student_name, test_name)
    boating_test = self.boating_tests.find{|test| test.test_name == test_name && test.student.first_name == student_name}

    if boating_test == nil
      student = self.students.find{|student| student.first_name == student_name}
      
      boating_test = BoatingTest.new(student, test_name, "passed", self)
    else
      boating_test.test_status = "passed"
    end
    boating_test
  end


  def fail_student(student_name, test_name)
    boating_test = self.boating_tests.find{|test| test.test_name == test_name && test.student.first_name == student_name}

    if boating_test == nil
      student = self.students.find{|student| student.first_name == student_name}

      boating_test = BoatingTest.new(student, test_name, "failed", self)
    else
      boating_test.test_status = "failed"
    end
    boating_test

  end


end #end of Instructor class
