class BoatingTest

  attr_accessor :instructor, :student,:status,:test

  @@all = []

  def initialize(student,test,status,instructor)
    @student = student
    @test = test
    @status = status
    @isntructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_BoatingTest(student,instructor,test_name)
    bt = @@all.find do |t|
      (t.student == student) && (t.instructor = instructor) && (t.test == test_name)
    end
    return bt
  end

end

# structor#pass_student should take in a student name and test name.
# If there is a BoatingTest whose name and student name match the
# names passed in, this method should update that BoatingTest status
# to 'passed'. If there is no matching test, this method should
 # create a test with a student with that name, that boat test name,
 # and the status 'passed'.
# Either way, it should return the BoatingTest instance
