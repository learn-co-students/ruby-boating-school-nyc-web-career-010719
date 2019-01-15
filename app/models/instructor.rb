class Instructor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    if the_test = BoatingTest.all.find {|test| student == student && test.test_name == test_name}
      the_test.test_status= "passed"
    else
      BoatingTest.new(student, test_name, test_status="passed", self.name)
    end
  end

  def fail_student(student, test_name)
    if the_test = BoatingTest.all.find {|test| student == student &&  test.test_name == test_name}
      the_test.test_status= "failed"
    else
      BoatingTest.new(student, test_name, test_status="failed", self.name)
    end
  end

end
