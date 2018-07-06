input = gets.chomp
letter = input.gsub(/[^a-zA-Z ]/," ").split(" ")
counter = {}
for i in 0...letter.length
	counter[letter[i]] = 1
end
sum = 0
counter.each do |key, value|
	sum += value
end
puts sum
