class Student

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_student(name)
    self.all.find do | student |
      student.name == name
    end
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  def boating_tests
    BoatingTest.all.select do | test |
      test.student == self
    end
  end

  def grade_percentage
    pass_fail = self.boating_tests.map do | test |
      test.status
    end
    @passes = 0
    pass_fail.each do | a |
      if a == "passed"
        @passes += 1.0
      end
    end
    (@passes / pass_fail.size.to_f).to_f
  end
end
