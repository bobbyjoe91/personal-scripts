def string_to_int(string, delim = " ")
  result = []
  string = string.split(delim)
  for i in 0...string.length
    result[i] = string[i].to_i
  end
  return result
end

input = string_to_int(gets.chomp)
dest = string_to_int(gets.chomp)

walk = dest[0] - 1

for i in 0...dest.length - 1
	if dest[i] <= dest[i+1]
		walk += dest[i+1] - dest[i]
	else
		walk += input[0] + dest[i+1] - dest[i]
	end
end

puts walk
