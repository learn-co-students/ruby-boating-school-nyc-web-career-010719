class Student
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name,test_status,instructor)
    BoatingTest.new(self,test_name,test_status,instructor)
  end

  def self.find(first_name)
    self.all.find {|student| student.first_name == first_name}
  end

  def find_all_test
    BoatingTest.all.select {|test| test.first_name == self}
  end

  def find_passed_test
    find_all_test.select {|test| test.test_status == 'passed'}
  end

  def grade_percentage
    find_passed_test.size / find_all_test.size.to_f
  end
end
