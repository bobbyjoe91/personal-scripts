def string_to_int(string, delim = " ")
  result = []
  string = string.split(delim)
  for i in 0...string.length
    result[i] = string[i].to_i
  end
  return result
end

input = string_to_int(gets.chomp)
n = input[0]
m = input[1]

snake = Array.new(n){Array.new(m){"."}}
for i in 0...snake.length
	for j in 0...snake[0].length
		if (i+1)%4 == 0
			snake[i][0] = "#"
			break
		elsif (i+1)%2 == 0
			snake[i][snake[0].length - 1] = "#"
			break
		else
			snake[i][j] = "#"
		end
	end
end

for i in 0...snake.length
	for j in 0...snake[0].length
		if j != snake[0].length - 1
			print snake[i][j]
		else
			puts snake[i][j]
		end
	end
end
