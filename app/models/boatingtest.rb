class BoatingTest
  attr_reader :student, :test_name, :instructor
  attr_accessor :test_status

  @@all = []

  ############## CLASS METHODS ##############
  def self.all
    @@all
  end

  ############## INSTANCE METHODS ##############
  def initialize(student, test_name, test_status, instructor)
    @student = student
    @test_name = test_name
    @test_status = test_status
    @instructor = instructor

    @@all << self
  end

end #end of BoatingTest class
