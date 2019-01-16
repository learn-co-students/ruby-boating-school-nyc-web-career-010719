class Student

  attr_accessor :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, test_status, instructor)
    BoatingTest.new(self, name, test_status, instructor)
  end

  def self.find_student(first_name)
    self.all.find {|student| student.first_name == first_name }
  end

  def grade_percentage
    tests = BoatingTest.all.find{|test| test.student.first_name == self.first_name}
    taken = tests.length.to_f
    passedTests = BoatingTest.all.find{|test| test.test_status == "passed"}
    passed = passedTests.length.to_f
    average = (passed/taken)*100
  end

end
