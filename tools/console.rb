require_relative '../config/environment.rb'
require_relative '../app/models/boatingtest.rb'
require_relative '../app/models/instructor.rb'
require_relative '../app/models/student.rb'

def reload
  load 'config/environment.rb'
end

#####TEST CODE##############

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

hello1 = spongebob.add_boating_test("hello 1", "failed", puff)
hello2 = spongebob.add_boating_test("hello 2", "failed", puff)
hello3 = spongebob.add_boating_test("hello 3", "failed", puff)

power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 202", "passed", krabs)
puff.fail_student(spongebob, "Don't Crash 101")
krabs.pass_student(spongebob, "dumb test 3")
krabs.fail_student(patrick, "Power Steering 202")

spongebob.all_tests
spongebob.grade_percentage

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
