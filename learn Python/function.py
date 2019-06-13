#function
'''
def funct(arg):
    body
'''
def gcd(a,b):
    if b == 0:
        return a
    else:
        return gcd(b,a%b)

def circle_area(r,phi = 3.14): #default value
    return phi*r*r

def printData(*args):
    #args is a list/ array of arguments
    for data in args:
        print(data, end=' ')
    print()

def printMap(**kwargs):
    #kwargs is a dictionary. It receives keyword argument(s)
    for key, value in kwargs.items():
        print(key + ": " + value)

print(gcd(100000,5015))
print(circle_area(7))

#this is keyword argument
#allows you to assign a value to a parameter without following order
print(circle_area(phi=3.2, r=7))

printData('25309125','125897921','12858001')

printMap(name = 'Henry', age = '32', POB = 'New York')