class Instructor

# --Class---------------------------------------------

  @@all = []

  def self.all
    @@all
  end

# --Instance------------------------------------------

  def initialize(name)
    @name = name
    @@all << self
  end

  def boating_tests
    BoatingTest.all.select {|boating_test| boating_test.instructor == self}
  end

  def students
    self.boating_tests.map {|boating_test| boating_test.student}
  end

  def pass_student(student_name, test_name)
    matching_boating_test = self.boating_tests.find {|boating_test| boating_test.name == test_name && boating_test.student.first_name == student_name}
    if matching_boating_test == nil
      BoatingTest.new(student_name.find_student,test_name,"passed",self)
    else
      matching_boating_test.status = "passed"
    end
    matching_boating_test
  end

  def fail_student(student_name, test_name)
    matching_boating_test = self.boating_tests.find {|boating_test| boating_test.name == test_name && boating_test.student.first_name == student_name}
    if matching_boating_test == nil
      BoatingTest.new(student_name.find_student,test_name,"failed",self)
    else
      matching_boating_test.status = "failed"
    end
    matching_boating_test
  end


end
