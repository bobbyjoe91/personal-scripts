text1 = gets.chomp
text2 = gets.chomp
text = (text1 + text2).split('').sort.join
joke = gets.chomp.split('').sort.join # split 'joke' into array with no delim
if text == joke
	puts "YES"
else
	puts "NO"
end
