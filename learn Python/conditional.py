input = input("Insert two number: ")
input = input.split(" ")

a = int(input[0])
b = int(input[1])

'''structure
if bool_expr:
    body
# elif is optional
elif bool_expr2:
    body          
    .             
    .             
    .
else:
    body
'''

if a > b:
    print("First is bigger")
elif a < b:
    print("Second is bigger")
else:
    print("First and second is equal")

'''Bool and comparison operator
    AND: & 
    OR: |
    XOR: ^
    != == <= >= > <
'''

#Nested IF and multiple condition
if (a >= b) & (a%b == 0):
    if a/b == b:
        print("Second is sqrt of first")
    else:
        print("Second is the factor of first")
elif (b >= a) & (b%a == 0):
    if b/a == a:
        print("First is sqrt of second")
    else:
        print("First is the factor of second")
else :
    print("Not a factor")