class Student

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self.name, test_name, test_status, instructor)
  end

  def self.find_student(name)
     @name = name
  end

  def all_tests
    BoatingTest.all.select { |test| test.student == self }
  end

  def passing_tests
    all_tests.select {|test| test.test_status == "passed"}
  end

  def grade_percentage
     (passing_tests.length.to_f) / (all_tests.length.to_f) * 100.0
  end

end
