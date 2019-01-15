class Instructor

  attr_reader :name

  @@all = []

  ######################################################
  ### CLASS METHODS ####################################
  ######################################################
  #Instructor.all should return all of the student instances
  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  ######################################################
  ### INSTANCE METHODS #################################
  ######################################################

  #Instructor#pass_student should take in a student name and test name. If there is a BoatingTest whose name and student name match the names passed in, this method should update that BoatingTest status to 'passed'. If there is no matching test, this method should create a test with a student with that name, that boat test name, and the status 'passed'. Either way, it should return the BoatingTest instance.
  def self.pass_student(student_first_name, test_name)
     pass_student= BoatingTest.all.find{|test| test.student.first_name == student_first_name && test.name == test_name}
     pass_student.status = "passed"
   end

  #Instructor#fail_student should take in a student name and test name. Like #pass_student, it should try to find a matching BoatingTest and update its status to 'failed'. If it cannot find an existing BoatingTest, it should create one with the name, the matching student, and the status 'failed'.
  def self.fail_student(student_first_name, test_name)
    fail_student= BoatingTest.all.find{|test| test.student.first_name == student_first_name && test.name == test_name}
    fail_student.status = "failed"
  end

end #end of my instructor class
