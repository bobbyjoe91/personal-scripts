def stringify(x)
	string = ""
	for i in 0...x.length
		string = string + x[i].to_s
	end
	return string
end

# aaaa:nn:aaaa_nnn:aa
alpha = 96
alpha_array = Array.new(26) { (alpha+=1).chr }
num = -1
num_array = Array.new(10) { num+=1 }

alpha_first = stringify(alpha_array.sample(4))
alpha_second = stringify(alpha_array.sample(4))
alpha_third = stringify(alpha_array.sample(2))
num_first = stringify(num_array.sample(2))
num_second = stringify(num_array.sample(3))

print "Please wait"
sleep(0.5)
print "."
sleep(0.5)
print "."
sleep(0.5)
print ".\n"
sleep(1)
print "Your codename is \n"
print alpha_first,":",num_first,":",alpha_second,"_",num_second,":",alpha_third

