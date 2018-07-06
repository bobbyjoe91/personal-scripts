num1, num2 = gets.chomp, gets.chomp
tmp, tmp2 = [], []
for i in 0...num1.length
	tmp[i] = num1[i].to_i
	tmp2[i] = num2[i].to_i
	print tmp[i]^tmp2[i]
end
print "\n"
