def array_input(string, delim = " ")
	array = []
	string = string.split(delim)
	for i in 0...string.length
		array[i] = string[i].to_i
	end
	return array
end

input = array_input(gets.chomp)
sk = input[0]
level = input[1]

#U can sort the dragon strength
win = 0
for i in 0...level
	input = array_input(gets.chomp)
	sd = input[0]
	bonus = input[1]
	
	if sk >= sd
		sk += bonus
		win = 1
	else
		puts "NO"
		break
	end
end

if win == 1
	puts "YES"
end
