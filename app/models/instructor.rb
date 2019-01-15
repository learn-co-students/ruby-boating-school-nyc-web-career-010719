class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

    #### CLASS METHODS #####

  def self.all
    @@all
  end

    #### INSTANCE METHODS #####

  def tests
    BoatingTest.all.select do|boating_test|
      boating_test.instructor == self
    end
  end


  def pass_student(student_name, test_name)
    found_test = tests.find do|test|
      test.student.name == student_name && test.name == test_name
    end
    if found_test == nil
      new_test = BoatingTest.new(student_name, test_name, "passed", self)
      return new_test
    else
      found_test.status = "passed"
      return found_test
    end
  end

  def fail_tudent(student_name, test_name)
    found_test = tests.find do|test|
      test.student.name == student_name && test.name == test_name
    end
    if found_test == nil
      BoatingTest.new(student_name, test_name, "failed", self)
    else
      found_test.status = "failed"
      found_test
    end
  end



  # def fail_tudent(student_name, test_name)
  #   @test_exists =
  #     boating_test.student.name == student_name && boating_test.instructor.name == self.name && boating_test.name == test_name
  #   end
  #   if @test_exists == nil
  #     new_test =
  #   else
  #     @test_exists.status = "failed"
  #     @test_exists
  #   end
  # end


end
