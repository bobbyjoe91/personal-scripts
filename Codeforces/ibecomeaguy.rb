level = gets.chomp.to_i
input_x, input_y = gets.chomp.split(" "), gets.chomp.split(" ")
counter = {}
game = []
for i in 1..input_x[0].to_i
  game << input_x[i]
end
for i in 1..input_y[0].to_i
  game << input_y[i]
end
for i in 0...game.length
  counter[game[i]] = 1
end
sum = 0
counter.each do |key, value|
  sum += value
end
if sum == level
  puts "I become the guy."
else
  puts "Oh, my keyboard!"
end
