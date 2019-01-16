class BoatingTest
  attr_reader :student, :instructor
  attr_accessor :test_name, :test_status

  @@all = []

  def self.all
    @@all
  end

  def initialize(test_name, test_status, instructor, student)
    @test_name = test_name
    @test_status = test_status
    @instructor = instructor
    @student = student
    @@all << self
  end




end #end of class
