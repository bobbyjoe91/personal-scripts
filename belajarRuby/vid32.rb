#(THE) HASH (SLINGING SLASHER)
#..init
pair = {} #empty hash
pair = { "x" => 125, "y" => 3236, "z" => 5475 } #pair["x"] = 125, and so on
#You can also use pair = Hash["x", 125, "y", 3236, "z", 5475]
#Or even you can use n*2 array to be inserted in Hash[]
puts pair["y"] #print element of pair["y"]

#..adding element to hash
pair["w"] = 6783
pair["a"] = 298
#..iterating
pair.each do |a, b| #you can iterate the key or value only
	puts "pair[a] = #{b}"
end

#order of key-value insertion doesn't affect the equity of those hash
puts "\nComparing 2 hash with different order of input"
hash1 = Hash["stuff",10,"thing",11]
hash2 = Hash["thing",11,"stuff",10]
puts hash1 == hash2 #the result is 'true'
#these concept doesn't apply to array

#.."Symbol" basic data type and its implementation as key of hash
#Symbol is string followed by colon (:)
#Symbol can't be used as variable

#Symbol has same id everywhere
a = :name
b = :name
c = "name"
d = "name"
print a," id: #{a.object_id}\n"
print b," id: #{b.object_id}\n"
print c," id: #{c.object_id}\n"
print d," id: #{d.object_id}\n"

#Because of the same id the symbol possesses, it can conserve more memory to system
#and increase performance

#pair = { "x" => 125, "y" => 3236, "z" => 5475 } using symbol
puts "\nhashing using symbol"
ex = {x: 125, y: 3236, z:5475}
ex.each do |sym, num|
	puts "#{sym}: #{num}" 
end
