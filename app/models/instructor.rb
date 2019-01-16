require 'pry'
class Instructor

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

#this will access all my (instructor's) boating tests
  def boating_test
    BoatingTest.select do |test|
    test.instructor == self
  end
end

#find my (instructor's) students
  def student
    boating_test.map do |test|
      test.student
  end
end

def self.pass_student(stu, tee)
  boattest = BoatingTest.all.find do |bt|
    bt.test_name == tee
    bt.student == stu
  end
  boattest.test_status = "Passed"
end

def self.fail_student(stu, tee)
  boattest = BoatingTest.all.find do |bt|
    bt.test_name == tee
    bt.student == stu
  end
  boattest.test_status = "failed"
end


end # end of class
