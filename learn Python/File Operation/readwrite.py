file = open('readwrite.txt', 'r') #'r' artinya read
text = file.read()
print(text)

file = open('readwrite.txt', 'a+') #'a' artinya append, '+' artinya bs baca juga
file.write("\nI've added something") #sampai sini, pointer ada di ujung file

file.seek(0) #kembalikan pointer ke awal file
text_2 = file.read() # akan error jika tidak ada '+' pada 'a'
print(text_2)