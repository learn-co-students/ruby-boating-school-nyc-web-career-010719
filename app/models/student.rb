class Student
  attr_reader :first_name

  @@all = []

  ############## CLASS METHODS ##############
  def self.all
    @@all
  end

  def self.find_student(first_name)
    self.all.find{|student| student.first_name == first_name}
  end

  ############## INSTANCE METHODS ##############
  def initialize(first_name)
    @first_name = first_name

    @@all << self
  end

  def boating_tests
    BoatingTest.all.select{|test| test.student == self}
  end

  def instructors
    self.boating_tests.map{|test| test.instructor}
  end

  def add_boating_test(test_name, test_status, instructor)
    new_test = BoatingTest.new(self, test_name, test_status, instructor)
  end

  def grade_percentage
    total_tests = self.boating_tests.count
    passed_tests = self.boating_tests.select{|test| test.test_status == "passed"}.count
    passed_tests / total_tests
  end


end #end of Student class
