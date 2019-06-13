def op_counter(calc):
	counter = 0
	for operands in calc:
		if not operands.isnumeric():
			counter += 1
	return counter

def aritmethic(calc):
	result = 0
	if calc[1] == "+":
		result = int(calc[0]) + int(calc[2])
	elif calc[1] == "-":
		result = int(calc[0]) - int(calc[2])
	elif calc[1] == "*":
		result = int(calc[0]) * int(calc[2])
	elif calc[1] == "/":
		result = int(calc[0]) / int(calc[2])
	elif calc[1] == "^":
		result = int(calc[0]) ** int(calc[2])
	calc = [result]
	return calc[0]

def emdas(calc):
	operands = op_counter(calc)
	length = len(calc)
	if operands == 1:
		return aritmethic(calc)
	elif operands > 1:
		i = 1
		while length != 1:
			print(i, calc[i])
			if (calc[i] == "*") | (calc[i] == "/") | (calc[i] == "^"):
				temp = []
				temp.append(calc[i-1])
				temp.append(calc[i])
				temp.append(calc[i+1])
				calc[i] = aritmethic(temp)
				calc.remove(calc[i-1])
				calc.remove(calc[i])
				length = len(calc)
				i += 1
			elif ((calc[i] == "-") | (calc[i] == "+")) & ((not "*" in calc) & (not "/" in calc) & (not "^" in calc)):
				temp = []
				temp.append(calc[i-1])
				temp.append(calc[i])
				temp.append(calc[i+1])
				calc[i] = aritmethic(temp)
				calc.remove(calc[i-1])
				calc.remove(calc[i])
				length = len(calc)
				i += 1
			else:
				i += 2
			
			if i >= length-1 & length != 1:
				i = 1
			print(calc, i)
		return calc[0]
	else:
		return "Invalid expression"

math_expr = input().split(' ')
print(op_counter(math_expr))
print(emdas(math_expr))
