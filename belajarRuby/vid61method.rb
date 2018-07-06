#OOP

#..method
def cube(n = 1) #cube function with default n = 1
	return n**3 #even you can omit 'return' :O
end

n = gets.chomp.to_f
puts "result: #{cube(n)}","default: #{cube()}"
#return value
#The last data type/ structure evaluated by a function will become the return value data type/ structure

#..splat operator
def count(*number) #optional argument allow us to input as much arguments as much as possible
	i = 0
	number.each do
		i += 1
	end
	return i
end
#only one splat operator allowed in a method
#1,4,2,5,6,2,2,3,5,2,52,236,1
puts "There are #{count(1,4,2,5,6,2,2,3,5,2,52,236,1)} number"
#6436,325,32,632,657,9672
puts "There are #{count(6436,325,32,632,657,9672)} number"
#by using array
num = [2,6,7,2,7,9,0,3,5,8,1,8,2,1,1,1,47,7,4,7,3,57,23,5]
puts "There are #{count(*num)} number"

#splat operator for array destructuring & coercion
#destructuring (only one splat is allowed)
first, *last = [1,2,3,4]
print "last = ", last, "\n"

*a, b = ['a','b','c','d']
print "a = ", a, "\n"

x, *y, z = [1,2,3,2,1]
print "y = ", y, "\n"

#coercion
range = *(1..4)
print "range = ", range, "\n"

#..exercise
#1
def introduction (language, *name)
	string = language+" is created by "
	name.each do |temp|
		string = string+temp+" "
	end
	return string
end

puts introduction("Ruby", "Yukihiro", "Matsumoto")


