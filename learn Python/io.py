''' Input and output '''

#input("_Messages")
data = input("Insert title: ")
print("The book title is " + data)

data = input("Insert ISBN: ")
number = data.split("-")

sum = 0
for _number in number:
    sum += int(_number)

print(sum)

if sum%11 == 0:
    print("The book is register by ISBN.")
else:
    print("The book is unregistered.")