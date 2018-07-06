#input mechanism
puts "Example one\n"
print "How old are you? "
age = gets.chomp #in string
age = age.to_i #parsing into integer

puts "So, you're born in #{2018-age}"

puts "\nExample two"
print "a^2 + b^2 = c^2\n"
print "insert a: "
a = gets.chomp.to_f #parsing to float
print "insert b: "
b = gets.chomp.to_f
c = Math.sqrt(a**2 + b**2).to_f
puts "The hypotenuse (c) is #{c}"
