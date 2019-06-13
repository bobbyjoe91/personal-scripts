#while (execute while condition is true)
puts "while loop"
x = 0
while x < 10
	print "#{x} "
	x += 1
end
print "\n"

#until (execeute while condition is false)
puts "until loop"
x -= 1
until x > 10
	print "#{x} "
	x += 1
end

#for
puts "\nInclusive for loops (1-10)"
for i in 1..10
	print "#{i} "
end
puts "\nExclusive for loops (1-10)"
for i in 1...10
	print "#{i} "
end

#.times
puts "\n.times iterator"
10.times do 
	|i| #i starts from 0
	print "#{i} "
end

#.upto and .downto (inclusive)

#(start).[upto][downto](end) do
	#(instruction)
puts "\n.upto iterator"
10.upto(20) do |a| #a starts from 10
	print "#{a} "
end

puts "\n.downto iterator"
122.downto(97) do |b| #a starts from 20
	b = b.chr #convert int to ascii char
	print "#{b} "
end

#each
puts "\n.each iterator for array of 7 value of fibonacci"
[1,1,2,3,5,8,13].each do |val| # val is 0-th index
	print "#{val} "
end
