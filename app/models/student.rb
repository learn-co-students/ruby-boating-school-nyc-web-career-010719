class Student
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test,status,instr)
    BoatingTest.new(self,test,status,instr)
  end

  def instructors
    self.boatingtest.map do |bt|
      bt.instructors
       # binding.pry
    end
  end

  def boatingtests
    BoatingTest.all.select do |bt|
      bt.student == self
      # binding.pry
    end
  end

  def self.find_student(fname)
    stud = @@all.find do |s|
      s.name == fname
    end
    puts stud
  end

  def grade_percentage
    test_status = boatingtests.map do |t|
      t.status
    end
    passes = 0
    test_status.each do |t|
      if t =='passed'
        passes+= 1.0
      end
    end
    # binding.pry
    (passes/test_status.length)*100

  end

end #end of class
