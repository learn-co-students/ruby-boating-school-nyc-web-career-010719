class Student

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def self.find_student(name)
    @@all.find do |student|
      student.name == name
    end
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
  end

  def boating_tests
    BoatingTest.all.select do |bt|
      bt.student == self
    end
  end

  def grade_percentage
    passing = boating_tests.select do |bt|
      bt.status == "passed"
    end
    answer = (passing.length.to_f/boating_tests.length.to_f) * 100
    answer.round(2)
  end

end #end of Student class
