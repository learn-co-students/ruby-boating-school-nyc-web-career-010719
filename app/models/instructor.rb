class Instructor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
  end
  def students
    self.boatingtest.map do |bt|
      bt.students
       # binding.pry
    end
  end
  def boatingtests
    BoatingTest.all.select do |bt|
      bt.instructor == self
      # binding.pry
    end
  end

  def pass_student(student,test_name)
    if BoatingTest.find_BoatingTest(student,self,test_name) == nil
      BoatingTest.new(student,test_name,'PASS',self)
    else
      BoatingTest.find_BoatingTest(student,self,test_name).test = 'PASS'
    end
  end

  def fail_student(student,test_name)
    if BoatingTest.find_BoatingTest(student,self,test_name) == nil
      BoatingTest.new(student,test_name,'FAIL',self)
    else
      BoatingTest.find_BoatingTest(student,self).test = 'FAIL'
    end
  end
  def self.name
    @@all
  end
end
