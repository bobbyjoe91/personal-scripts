#ruby version of abminba.java
def string_to_int(string, delim = " ")
  result = []
  string = string.split(delim)
  for i in 0...string.length
    result[i] = string[i].to_i
  end
  return result
end

number = string_to_int(gets.chomp)
puts number[0]**number[1] - number[1]**number[0]
