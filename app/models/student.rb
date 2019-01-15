require 'pry'

class Student

  @@all = []

  attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def boating_tests
    BoatingTest.all.select {|boatingtest| boatingtest.student == self}
  end

  def instructors
    boating_tests.map {|boatingtest| boatingtest.instructor}
  end

  def add_boating_test(boating_test, status, instructor)
    # binding.pry
    BoatingTest.new(self, boating_test, status, instructor)
  end

  def self.find_student(stud)
    Student.all.select {|student| student.first_name == stud.first_name}
  end

end
