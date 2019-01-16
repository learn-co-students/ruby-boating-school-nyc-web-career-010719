class Student

# --Class---------------------------------------------------------

  attr_reader :first_name

  @@all = []

  def self.all
    @@all
  end

  def self.find_student(name)
    @@all.find {|student| student.first_name == name}
  end

#--Instance-------------------------------------------------------

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def boating_tests
    BoatingTest.all.select {|boating_test| boating_test.student == self}
  end

  def instructors
    self.boating_tests.map {|boating_test| boating_test.instructor}
  end

  def add_boating_test
    BoatingTest.new(self,name,status,instructor)
  end

  def grade_percentage
    passed_tests = self.boating_tests.select {|boating_test| boating_test.status == "Pass"}
    ((passed_tests.length/self.boating_tests.length.to_f)*100).round(2)
  end

end
