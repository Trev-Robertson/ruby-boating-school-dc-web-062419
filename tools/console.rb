require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
 
no_crashing = spongebob.add_boating_test("Don't Crash 101", "passed", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)
puts patrick.grade_percentage
puts Student.all
puts patrick.add_boating_test("Test 1", "failed", "Spongebob")
puts Student.find_student("Patrick")
puts puff.fail_student("Patrick", "Test2")
puts krabs.fail_student(patrick, "Power Steering 201")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line

