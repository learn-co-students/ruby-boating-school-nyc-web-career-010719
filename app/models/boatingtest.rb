class BoatingTest

  attr_accessor :student, :name, :test_status, :instructor
  @@all = []

  def initialize(student, name, test_status, instructor)
    @student = student
    @name = name
    @test_status = test_status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

end
