number = gets.chomp.split('')
length = number.length
if (length <= 3 && (number.join == "1" || number.join == "14" || number.join == "144")) || (number.count("1") == length)
	puts "YES"
elsif length >= 3
	i = 0
	while i < length
		if number[i] == "1" && number[i+1] == "4" && number[i+2] == "4"
			i += 3
			acc = 1
		elsif number[i] == "1" && number[i+1] == "4"
			i += 2
			acc = 1
		elsif number[i] == "1"
			i += 1
			acc = 1
		else
			acc = 0
			break
		end
	end
	
	if acc == 1 
		puts "YES"
	else 
		puts "NO"
	end
else
	puts "NO"
end
