# Lists[]
''' contains one or more data with the same or different types '''
prog_lang = ['python','ruby','C','BASIC']
print(prog_lang)
print("prog_lang[0]: " + prog_lang[0])

prog_lang.append('Kotlin')
prog_lang[3] = 'Java'
del prog_lang[0]
print(prog_lang)

# Tuples()
''' immutable lists: cannot be changed '''
keyboard = ('qwerty', 'dvorak', 'abcdef')
print(keyboard[1])
list_key = list(keyboard)
print(list_key)
prog_lang_tuples = tuple(prog_lang)
print(prog_lang_tuples)

# Dictionary{}
''' key:value '''
data = {
    'name':'Johnson',
    'age':23,
    'weight':65.7,
    'height':170.1
}
print(data)
print(data['weight'])

data['POB'] = 'Boston'
print(data)

for key, value in data.items():
    print(key + ": " + str(value))

# Set{}
''' unindexed set of items, duplicate will be counted as one '''
car = {'suzuki', 'toyota', 'nissan', 'toyota', 'honda'}
motorbike = {'honda', 'suzuki', 'yamaha', 'kawasaki'}

print(car)
car.add('ford') # from the back
car.remove('suzuki')
print(car)

car.add('suzuki')
print(car | motorbike) #union, no duplication
print(car & motorbike) #intersection
print(car - motorbike) #difference of car
print(motorbike - car) #difference of motorbike
print(car ^ motorbike) #both difference and union
