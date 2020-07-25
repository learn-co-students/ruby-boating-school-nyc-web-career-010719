require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
maria = Student.new("maria")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
msberry = Student.new("msberry")


code_challenge = BoatingTest.new("Coding Is Hard","Passed", puff, "me")
geometrytest = BoatingTest.new("Test on Pi","pending", msberry, maria)
mathtest = BoatingTest.new("Test on Pi","Passed", msberry, maria)
sampletest = BoatingTest.new("Test on Pi","Passed", msberry, maria)
arttest = BoatingTest.new("Test on Pi","failed", msberry, maria)

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
