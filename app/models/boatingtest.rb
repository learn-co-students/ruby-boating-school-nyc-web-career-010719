class BoatingTest #this is my join class

  attr_accessor :student, :name, :status, :instructor

  @@all = []

  ######################################################
  ### CLASS METHODS ####################################
  ######################################################
  #BoatingTest.all should return all of the student instances
  def self.all
    @@all
  end

  def initialize(student, name, status, instructor)
    @student = student
    @name = name
    @status = status
    @instructor = instructor

    @@all << self
  end

  ######################################################
  ### INSTANCE METHODS #################################
  ######################################################

end #end of BoatingTest class
