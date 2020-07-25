require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")

puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")
test1 = BoatingTest.new(patrick, "test1", "pending", krabs)
test2 = BoatingTest.new(spongebob, "test1", "pending", puff)

spongebob.add_boating_test("btest1", "pending", puff)
Student.find_student(spongebob)
puff.pass_student(spongebob, test1)
puff.pass_student(patrick, test1)

puff.fail_student(spongebob, test1)
puff.fail_student(spongebob, test2)
puff.fail_student(patrick, test1)

spongebob.grade_percentage

# no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
# power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
# power_steering_pass = patrick.add_boating_test("Power Steering 202", "passed", krabs)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
