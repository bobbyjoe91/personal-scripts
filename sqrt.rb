def ancient_sqrt(base)
	x = 1.0
	for i in 1..10
		x = (x + base / x) / 2
	end
	return x
end

input = gets.chomp.to_f
puts ancient_sqrt(input)
