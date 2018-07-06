num = gets.chomp.to_i
tabs = gets.chomp
A = tabs.count("A")
D = tabs.count("D")
if A > D 
	puts "Anton"
elsif D > A
	puts "Danik"
else puts "Friendship"
end
