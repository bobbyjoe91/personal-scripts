require 'prime'

num = gets.chomp.to_i
if num%2 == 0 && !Prime.prime?(num/2)
	print "#{num/2} #{num/2}\n"
else
	i = 1
	arr = Array.new(num-2){i += 1}
	prime = []
	Prime.each(num) do |p|
		prime << p
	end
	comp = arr - prime
	for i in 0...comp.length/2
		min = num - comp[i]
		if(!Prime.prime?(min))
			print "#{comp[i]} #{min}\n"
			break
		end
	end
end
