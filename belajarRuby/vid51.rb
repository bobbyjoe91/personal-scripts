#I/O Operation
#..puts (writes a string ended by newline)

#..gets (input a string. WARNING: newline will be included without "chomp")

puts "#Without 'chomp'"
print "Input your name: "
name = gets
puts "Your name is #{name}. Nice to meet ya"

puts "\n#With 'chomp'"
print "Input your name: "
name = gets.chomp
puts "Your name is #{name}. Nice to meet ya"

puts "\n#Ruby input is in string. It should be converted by '.to_i' (for int) and so on"
puts "Phytagorean theorem"
print "insert x = "
x = gets.chomp.to_f
print "insert y = "
y = gets.chomp.to_f
r = Math.sqrt(x**2 + y**2)
puts "The hypotenuse is #{r}"

