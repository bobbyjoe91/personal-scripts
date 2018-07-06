def string_to_int(string, delim = " ")
  result = []
  string = string.split(delim)
  for i in 0...string.length
    result[i] = string[i].to_i
  end
  return result
end

#Die Roll
die_roll = string_to_int(input = gets.chomp)
chance = 6 - die_roll.max + 1
case chance
when 1
  puts "1/6"
when 2
  puts "1/3"
when 4
  puts "2/3"
when 3
  puts "1/2"
when 5
  puts "5/6"
when 6
  puts "1/1"
else
  puts "0/1"
end
