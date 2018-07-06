#some type of assignment
a = 4
puts a
b,c,d = 10, 20, 30
a += b
puts a, b, c, d

#no variable declaration which result in dynamic variable
a = 3.14
puts a
a = "Dynamic Ruby" #notice the change of data type from float to string
puts a

#don't use $, @, & to name a variable

#conditionals
#if else
x = gets.chomp.to_i
if x > 10
	puts "Hello"
else
	puts "Bye"
end

#else if
text = gets.chomp
if text == "Hello"
	puts "Hi"
elsif text == "Hi"
	puts "Hello"
else
	puts "Bye"
end

#case
require 'date' #library "date"

case Date.today.strftime("%A") #day of today
when "Monday"
	puts "Work"
when "Tuesday"
	puts "Still working"
when "Wednesday"
	puts "A bit relaxing"
end

#ternary operator
require 'time' #library "time"

print Time.now,"\n"
Time.now.hour < 12 ? (puts "AM") : (puts "PM")
# (criteria) ? (action) : (else_action)
