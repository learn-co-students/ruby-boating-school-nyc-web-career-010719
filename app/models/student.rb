class Student
  attr_reader :first_name

#stores array of all student data
  @@all = []

#allows you to access student data array
  def self.all
    @@all
  end

  #this will run when you create a new instance of this class, necessary listed parameters to create a new instance
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

#will take in a first name and output the student (Object) with that name
  def self.find_student(name)
      self.all.find do |student|
        student.first_name == name
      end
    end

  def boating_test
    BoatingTest.all.select do |test|
      test.student == self
    end
  end

  def instuctor
    instructor.map do |test|
      test.instructor
    end
  end

#("Don't Crash 101", "pending", puff)
  def add_boating_test(test_name, test_status, instructor)
    new_test = BoatingTest.new(test_name, test_status, instructor, self)
    BoatingTest.all << new_test
    end

##
def grade_percentage
 all_test_count = boating_test.count
 all_passed_tests = boating_test.select do |bt|
   bt.test_status == "Passed"
 end
 all_passed_count = (all_passed_tests.count) * 100
 percentage = (all_passed_count / all_test_count).to_f
end


end #end of class
