require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 202", "passed", krabs)

no_crashing
power_steering_failure
power_steering_pass

BoatingTest.all

power_steering_pass.student

Student.find_student("Spongebob")

patrick.boating_tests

# puff.pass_student("Spongebob", "Don't Crash 101")

sandy = Student.new("Sandy")
# puff.pass_student("Sandy", "cool test")
#
# my_leg = Student.new("My Leg Guy")
# krabs.fail_student("My Leg Guy", "way cool test")

# puff.pass_student("Patrick", "Power Steering 202")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
