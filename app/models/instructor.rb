class Instructor

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def pass_or_fail(student, test_name, p_or_f)
    test = BoatingTest.all.find do | t |
      t.student.name == student && t.test_name == test_name && t.status != p_or_f
    end
    if !test
      test = BoatingTest.new(student, test_name, p_or_f, self)
    else
      test.status = p_or_f
    end
    test
  end

  def pass_student(student, test_name)
    pass_or_fail(student, test_name, "passed")
  end

  def fail_student(student, test_name)
    pass_or_fail(student, test_name, "failed")
  end
end
