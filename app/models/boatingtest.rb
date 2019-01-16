class BoatingTest

# --Class----------------------------------------------

  attr_reader :name, :instructor, :student
  attr_accessor :status

  @@all = []

  def self.all
    @@all
  end

# --Instance--------------------------------------------

  def initialize(student,name,status,instructor)
    @student = student
    @name = name
    @status = status
    @instructor = instructor
    @@all << self
  end

end
