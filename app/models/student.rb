class Student
  attr_reader :first_name

  @@all = []

  ######################################################
  ### CLASS METHODS ####################################
  ######################################################
  #Student.all should return all of the student instances
  def self.all
    @@all
  end

  #Student.find_student will take in a student first name and output that student (Object)
  def self.find_student(first_name)
    self.all.find do|student|
      student.first_name == first_name
    end
  end

  #should initialize with first_name
  def initialize(first_name)
    @first_name = first_name

    @@all << self
  end

  ######################################################
  ### INSTANCE METHODS #################################
  ######################################################

  #Student#add_boating_test should initialize a new boating test with a student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
  end


  #Student#grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
  def grade_percentage
  end

end #end of my student class
