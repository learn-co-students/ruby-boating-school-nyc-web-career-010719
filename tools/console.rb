require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Student.new("Sarah")
s2 = Student.new("Elbert")
s3 = Student.new("Janet")
s4 = Student.new("Donn")

i1 = Instructor.new("Mrs.Puff")
i2 = Instructor.new("Mr. Krabs")
i3 = Instructor.new("Larry the Lobster")
i4 = Instructor.new("Squidward")

bt1 = BoatingTest.new(s1,"Test1","passed",i1)
bt2 = BoatingTest.new(s1,"Test2","failed",i1)
bt3 = BoatingTest.new(s3,"Test3","failed",i2)
bt4 = BoatingTest.new(s4,"Test4","failed",i3)
bt5 = BoatingTest.new(s1,"Test5","passed",i4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
