n = Array.new(5){0}
for i in 0..4
	g = Generate::random(8)
	if !n.include?(g)
		n[i] = g
	else
		while n.include?(g)
			g = Generate::random(8)
		end
		n[i] = g
	end
end
print n
