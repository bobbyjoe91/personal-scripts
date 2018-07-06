number = gets.chomp.to_i
letter = gets.chomp.downcase
counter = {}
for i in 0...letter.length
	counter[letter[i]] = 1
end
sum = 0
counter.each do |key, value|
	sum += value
end
if sum == 26
	puts "YES"
else
	puts "NO"
end
