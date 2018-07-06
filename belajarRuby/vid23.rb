 #boolean data type (&&, ||, ^)
bool = true ^ true
puts bool
#..lazy eval
puts("a") && puts("b") #only print the most beginning method

#numeric
#..integer
#..fixnum
#..bignum
#..float
#..complex
#..bigdecimal
#..rational

#string
name = "Febol"
love = "Tan2"
#.. "#{var}" is used for string interpolation (with double quote, not single quote)
puts ("My name is #{name} and I love #{love} very much <3")
puts ('My name is #{name} and I love #{love} very much <3') #.. #{var} literally printed
#..escape sequence (\n,\",\',\\)
puts ("He said \"Fuck You!\"")
#..Search in string
a = "Veni Vidi Vici"
puts a.include?("Veni") #search if "Veni" exists in string a
puts a.start_with?("Vini") #search if a starts with "Vini"
puts a.end_with?("Vici") #search if a ends with "Vici"
puts a.index("Vidi") #index of first "Vidi" in string a (starts from 0)
#..case in string
b = "May the Force be with you."
puts b.upcase #all string is uppercase
puts b.downcase #all string is bottomcase
puts b.swapcase #uppercase become bottomcase, vice versa
#..split and join
words = ["Cogito","Ergo","Sum"]
join = words.join(" ") # join strings in word into one strings with " "
puts join
split = join.split(" ") # split string with delimiter " "
puts split[1]
#..concatenate (method: +, <<, var.concat(string))
puts "x" + "y"
puts "x" << "y"
puts "x".concat("y")
#..string multiplication
puts "*" * 10 # **********
#..substring substitution
lyric = "you are a good substitute for all you"
puts lyric.sub("you", "I") # first "you" in lyric will be replaced with "I"
puts lyric.gsub("you", "I") # all "you" will be replaced  with "I"

#Nil class
an_object = nil
puts an_object.nil?
puts an_object.object_id

