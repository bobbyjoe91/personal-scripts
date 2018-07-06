#..ARGV (input arguments is typed in the terminal while compiling the file)
#ruby (filename).rb [first_arg] [second_arg] ... [n-th_arg]
length, width, height = ARGV
length, width, height = length.to_f, width.to_f, height.to_f
volume = length*width*height
puts "The volume of the cube is #{volume} cubic"
puts "#{ARGV[3]}"
