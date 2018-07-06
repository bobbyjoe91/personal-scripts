def string_to_int(string, delim = " ")
  result = []
  string = string.split(delim)
  for i in 0...string.length
    result[i] = string[i].to_i % 2
  end
  return result
end

n = gets.chomp.to_i
test = string_to_int(gets.chomp)
if test.count(0) > test.count(1)
	puts test.index(1) + 1
else
	puts test.index(0) + 1
end

