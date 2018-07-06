def route_printer(user_location, destination)
	route = ""
	if user_location[0] < destination[0]
		while user_location[0] != destination[0]
			user_location[0] += 1
			route += " - go to " + user_location.to_s + "\n" 
		end
		if user_location[1] < destination[1]
			route += " - turn left\n"
			while user_location[1] != destination[1]
				if user_location[1]+1 == destination[1]
					user_location[1] += 1
					route += " - finish at " + user_location.to_s + "\n"
				else
					user_location[1] += 1
					route += " - go to " + user_location.to_s + "\n"
				end
			end
		else
			route += " - turn right\n"
			while user_location[1] != destination[1]
				if user_location[1]-1 == destination[1]
					user_location[1] -= 1
					route += " - finish at " + user_location.to_s + "\n"
				else
					user_location[1] -= 1
					route += " - go to " + user_location.to_s + "\n"
				end
			end
		end
	elsif user_location[0] > destination[0]
		while user_location[0] != destination[0]
			user_location[0] -= 1
			route += " - go to " + user_location.to_s + "\n" 
		end
		if user_location[1] > destination[1]
			route += " - turn left\n"
			while user_location[1] != destination[1]
				if user_location[1]-1 == destination[1]
					user_location[1] -= 1
					route += " - finish at " + user_location.to_s + "\n"
				else
					user_location[1] -= 1
					route += " - go to " + user_location.to_s + "\n"
				end
			end
		else
			route += " - turn right\n"
			while user_location[1] != destination[1]
				if user_location[1]+1 == destination[1]
					user_location[1] += 1
					route += " - finish at " + user_location.to_s + "\n"
				else
					user_location[1] += 1
					route += " - go to " + user_location.to_s + "\n"
				end
			end
		end
	else
		if user_location[1] < destination[1]
			while user_location[1] != destination[1]
				if user_location[1]+1 == destination[1]
					user_location[1] += 1
					route += " - finish at " + user_location.to_s + "\n"
				else
					user_location[1] += 1
					route += " - go to " + user_location.to_s + "\n"
				end
			end
		else
			while user_location[1] != destination[1]
				if user_location[1]-1 == destination[1]
					user_location[1] -= 1
					route += " - finish at " + user_location.to_s + "\n"
				else
					user_location[1] -= 1
					route += " - go to " + user_location.to_s + "\n"
				end
			end
		end
	end
	return route
end

print route_printer([1,3], [2,5])

#Generator mantap jiwa!!!
module Generate
	def Generate.random_xy(limit)
		coord = [0,0]
		token = Array.new(limit){|num| num+1}
		coord[0], coord[1] = token.sample, token.sample
		return coord
	end
	
	def Generate.random_num(limit) #random index generator
		num = -1
		n = Array.new(limit){num+=1}
		return n.sample
	end
	
	#def Generate.random_array(amount, limit) #generate unsorted array with range 0 to limit-1
 	#	array = Array.new(amount){-1}
	#	for i in 0...amount
		#	tmp = Generate::random_num(limit)
	#		if !array.include?(tmp)
	#			array[i] = tmp
	#		else
	#			while array.include?(tmp)
	#				tmp = Generate::random_num(limit)
	#			end
	#			array[i] = tmp
	#		end
	#	end
	#	
	#	return array
	#end
end
