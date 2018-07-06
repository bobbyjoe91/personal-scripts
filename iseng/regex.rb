string = "This is my girlfriend: Indri. She comes from North Jakarta."
sub_string = string.gsub(/[^a-zA-Z0-9 ]/,"").split(" ")

a = :name
b = :origin

id = {a => sub_string[4], b => sub_string[8]+" "+sub_string[9]}
print id[a]
