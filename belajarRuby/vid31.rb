#ARRAY
#..initialization by empty array
empty = []
empty = [1,2,3]
puts empty[0]

#..initialization by blocks
sentence = %w(Hello world)
puts sentence[0]

#..initialization by iteration
x = Array.new(5){"word"} #or Array.new(5, "word")
print x, "\n" #printing whole array

#..2D array
i = 0
_2d = Array.new(3) {Array.new(3){|i| i+1}}
print _2d, "\n"
puts _2d[1][2]

#..U can't do this in cpp
assort = [1, 3.14, "phi", true]
print assort[0], " ", assort[1], " ", assort[2], " ", assort[3], "\n"
assort[4] = [7,4]
print assort[4], "\n"

#..insert element to the last index of array
assort << 32362342
print assort, "\n"

#..accessing array
# -conventional way arr[1]
# -using at => arr.at[1]
# -reverse index lookup
puts assort[-1] #first element from the end

#..slicing
alpha = ['a', 'b', 'c', 'd']

#ilustration
#  -4  -3  -2  -1 << reverse index
#   0   1   2   3 << normal index
# +---+---+---+---+
# | a | b | c | d |
# +---+---+---+---+
# 0   1   2   3   4 << numbering for slicing
#syntax = arr[numbering, number_of_elements]
puts alpha[0,1]
print alpha[0,2], "\n" #take 2 element of alpha start from index 0
print alpha[3,2], "\n" #take 2 element of alpha start from index 3
print alpha[4,2], "\n"
print alpha[5,1], " <= Nil element\n"
print alpha[0..2], "\n" #take element 0 to 2 inclusively
print alpha[0...2], "\n" #take element 0 to 2 exclusively

#..selection
fibo = [0,1,1,2,3,5,8,13,21,34,55,89]
mystery = fibo.select {|fibo| fibo.even?} #select even element of fibonacci
print mystery, "\n"

#..mapping (it's not the same like the map in cpp)
ascii = [65, 66, 67]
letter = ascii.map {|i| i.chr} #or ascii.collect {|i| i.chr}
print letter, "\n"

#..deletion
assort.delete(3.14) #delete 3.14
assort.delete_at(2) #delete element of assort in index 2
assort.delete_if {|element| element.is_a?(String)}
print assort, "\n"

#..iteration
#Use .each in vid22.rb (line 50)
