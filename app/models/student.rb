class Student

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #### CLASS METHODS #####

  def self.all
    @@all
  end

  def self.find_student(name)
    @@all.find do|student|
      student.name == name
    end
  end

    #### INSTANCE METHODS #####

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  def tests
    BoatingTest.all.select do|test|
      test.student == self
    end
  end

  def passed_tests
    @passed_tests = tests.select do|test|
      test.status == "passed"
    end
    @passed_tests = @passed_tests.length
  end

  def grade_percentage
    total_tests = tests.length
    passed_tests.to_f / total_tests
  end

end #end of class
