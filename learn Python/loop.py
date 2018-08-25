#while
'''
while (condition):
    body
'''
count = 1

while count <= 10:
    print("while loop...")
    count += 1

#while...else...
'''
while (conditional):
    body
else:
    body #will be executed after while
'''

count = 0

while count <= 5:
    print("iteration:", count)
    count += 1
else:
    count = 0
print("count:",count)

#for...in...
'''
    for var in list:
        body

    for var in range:
        body

    #var doesn't have to be initiated
'''

dice = ["1","2","3","4","5","6"]

for number in dice:
    print ("roll!",number)

text = "Hello World!"

i = 0
for char in text:
    print ("character",i," :",char)
    i += 1

for i in range(1,5): #exclusive
    print(i)

#Nested loop

input = input("Insert width and height (w,h): ")
size = input.split(",")
width = int(size[0])
height = int(size[1])

for i in range(0,height):
    for j in range(0, width):
        if (i == 0) | (i == height-1):
            print("*",end='') #print will be ended by NULL, not \n
        elif (j == 0) | (j == width - 1) | (i == j) | (i+j == width-1):
            print("*",end='')
        else:
            print(" ",end='')
    print() #print \n