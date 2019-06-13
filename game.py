'''
Developed by Bobby Jonathan
created in 2018
compatible with Python 3 and latest versions
'''

#still under development
import random

#generate random number
number = list(str(random.randint(1000, 9999)))

#user input
guess = list(input('Insert a random number: '))
score = False

#input checker
while not(score):
	#if the input is true
	if(guess == number):
		print('Yeay')
		score = True
	#if the digits are not 4
	elif len(guess) != 4:
		if len(guess) > 4:
			print('The number is too big')
			guess = list(input('Insert a random number: '))
		else:
			print('The number is too small')
			guess = list(input('Insert a random number: '))
	#if the answer is false
	else:
		digit_not_match = 0
		#digit checker
		for i in range(0,4):
			if guess[i] == number[i]:
				print("Digit", i+1, "is correct")
			else:
				digit_not_match += 1
		if digit_not_match == 4:
			print("No digit is matching")
		#re-input the answer
		guess = list(input('Insert a random number: '))
