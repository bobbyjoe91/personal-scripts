//mathematical operator and method

var _init = 90;
var _init2 = 100;

//math operator
var sum = _init + _init2;
var min = _init - _init2;
var time = _init * _init2;
var divide = _init * _init2;
var inc = _init++;
var dec = _init--;

document.write(sum + " " + min + " " + time + " " + divide + " " + inc + " " + dec + "<br>");

//number method part 1
var float = (_init2 / _init).toFixed(2); //float will be in 2 decimal places
var int_to_string = sum.toString(); // change number to string
var random = Math.random(); // generate pseudorandom number
var min  = Math.min(1,2,3,4,5,6,7,8,9,10); // take the smallest number
var max = Math.max(2152727,123136,235125,46213125,23136584,236247); // take the biggest number
document.write(float + " " + int_to_string + " " + random + " " + min + " " + max + "<br>");

//number method part 2
var float = Math.round(float); // there are also Math.ceil(), Math.floor()
var logarithm = Math.log(2.71828182845904523536028747135266249775724709369995); // ln(max)
var abs = Math.abs(_init - _init2); // |x|
document.write(float + " " + logarithm + " " + abs + "<br>");

//string method part 1
//.length, .indexOf(string), .lastIndexOf(string), .charAt(int), .toUpperCase(), .toLowerCase(), .replace(string, string)
var word = "racecar";
document.write(word.length + "<br>"); //number of letter, returns int
document.write(word.indexOf("r") + "<br>"); //find the index of "r" from the begining of the text, starts from 0
document.write(word.lastIndexOf("r") + "<br>"); //find the index of "r" from the end of the text
//.search() is also the same with .indexOf, but become very powerful when implementing regex
//when the char or substring not found, indexOf or lastIndexOf will return -1
document.write(word.charAt(3) + "<br>"); //return "e" in "racecar". if not found, it will return NULL
document.write(word.toUpperCase() + "<br>");
document.write(word.toLowerCase() + "<br>");
document.write(word.replace("race","rice") + "<br>"); //replace "race" with "rice"

//string method part 2
//.substring(int_start, int_end), .substr(int_start, int_length), parseInt(string), parseFloat(string)
document.write(word.substring(0,4) + "<br>"); //take string from index 0 to index 4 exclusively
document.write(word.substr(0,4) + "<br>");
document.write(parseInt("36126236") + "<br>"); //change string to int
document.write(parseFloat("3.1415")); //change string to float
//parseInt and parseFloat will return "NaN" (Not a Number) if the param isn't a string of number
//parseInt will return number(s) before "." if the param is a string of float