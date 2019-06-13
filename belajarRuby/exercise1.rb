def checkerboard(num)
	if num > 0
		check = ""
		pattern = ["[r]","[b]"]
		for i in 0...num
			for j in 0...num
				check = check + pattern[(i+j)%2]
			end
			check += "\n"
		end
		return check
	end
end

plot = gets.chomp.to_i
puts checkerboard(plot)
