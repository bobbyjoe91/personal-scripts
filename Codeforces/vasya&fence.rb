def string_to_int(string, delim = " ")
  result = []
  string = string.split(delim)
  for i in 0...string.length
    result[i] = string[i].to_i
  end
  return result
end

def width(string, delim = " ", height_limit)
  sum = 0
  string = string.split(delim)
  for i in 0...string.length
    if string[i].to_i > height_limit
		sum = sum + 2
    else
		sum = sum + 1
    end
  end
  return sum
end

input = string_to_int(gets.chomp)
limit = input[1]
puts width(gets.chomp, " ", limit)
