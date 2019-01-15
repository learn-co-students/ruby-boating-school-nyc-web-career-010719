require 'pry'

require_relative './boatingtest.rb'
require_relative './instructor.rb'
require_relative './student.rb'


jon = Instructor.new("Jon")
jordan = Student.new("Jordan")
test1 = BoatingTest.new(jordan, "license1", "not passed", jon)
test2 = BoatingTest.new(jordan, "license2", "not passed", jon)
test3 = BoatingTest.new(jordan, "license3", "passed", jon)
binding.pry
puts "hello"

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 202", "passed", krabs)
