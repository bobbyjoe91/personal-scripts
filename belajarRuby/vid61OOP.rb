#OOP

#..global variable
$pi = 3.1415

#..create class in Ruby
class Person #class must begin with capital letter
	def initialize(name) #default constructor (must be "initialize")
		@name = name
	end
	def name() #getter
		return @name
	end
	def name=(new_name) #setter
		@name = new_name
	end
end

person = Person.new("Bob")
puts "Hello, my name is #{person.name()}"
person.name = "Ita" #using setter
puts "Hello, my name is #{person.name()}"

#If we have thousands of attribute, create one setter and getter for
#each attribute would be time-consuming

class Persona
	attr_reader :name, :store #getter
	attr_writer :name, :store #setter
	#we can replace attr_reader and attr_writer with single attr_accessor
	
	@@counter = 0 #class variable
	def initialize(name, store)
		@name = name
		@store = store
		@@counter += 1
	end
	
	#class variable and self function globally functional for class, not the instance (object)
	def self.counter #def self.(method_name)
		return @@counter
	end
end

persona = Persona.new("Indriani Juvita", "Overdose K-shop")
puts "Hello, I'm #{persona.name}. I'm the owner of #{persona.store}"
persona.store = "Overdose Boombatik"
puts "Hello, I'm #{persona.name}. I'm the owner of #{persona.store}"
puts "Total entrepreneur in this object is #{Persona.counter}"

#..inheritance
class Polygon #Parent
	def initialize(length, breadth)
		@length = length
		@breadth = breadth
	end
	
	def perimeter
		2 * (@length + @breadth)
	end
end

class Square < Polygon #child
	def initialize(side) #square is 4 sides polygon with length = breadth
		@length = side
		@breadth = side
	end
	
	def perimeter
		4 * @length
	end
end

class Right3angle < Polygon
	def perimeter
		@length + @breadth + Math.sqrt(@length**2 + @breadth**2)
	end
end

s = Square.new(10)
w = Polygon.new(10,20)
l = Right3angle.new(30,40)
puts s.perimeter
puts w.perimeter
puts l.perimeter

#..method
#method redefining & overriding
class Iseng
	def initialize(num)
		@num = num
	end
	
	def +(num1)
		return @num+num1-23*100%1326+15**10
	end
end

_1 = Iseng.new(1)
puts _1+0

#overriding can be achieved with or without super
#super allows overriden method to re-use old method

#private, protected, public
#just type "private", "protected", or "public" before the adjacent method

#..Module
#module is a 'toolbox' consist of functions and or classes

module Circle
	Pi = 3.1415 #name of variable should begin with capital letter
	def Circle.area(radius) #def (module_name).(function_name)(param)
		Pi*radius**2
	end
	def Circle.perim(radius)
		Pi*2*radius
	end
end

puts Circle::Pi
puts Circle::area(10)
puts Circle::perim(10)

#to include a module in a class, type 'include (module_name)'. this feature
#bring method into the class but not in class level
class Angle
	include Math
	
	def initialize(angle=0)
		@angle = angle
	end
	def cosine
		cos(@angle) #no need to write "Math::" because it's included
	end
	def sine
		sin(@angle)
	end
end

theta = Angle.new(45)
puts theta.cosine
puts theta.sine
