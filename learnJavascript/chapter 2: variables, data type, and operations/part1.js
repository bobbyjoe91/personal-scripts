//variables and data types

//  declaration
/*
    Here are things to remember about variable name:
    1. Only letters, $, and _ that can begin a var names
    2. var name (other than begining letter) can contain numbers, letters, $, and _
    3. var name is case sensitive
    4. there are some reserved name that can not be used, e.g: var
*/

var x = 3.14; //float
var phi = "phi"; //string
var integer = 10010; //int
var _new = x + integer;

document.write("phi: " + x + "<br>integer: " + integer); //kinda formatted input. <br> is newline
document.getElementById("write").innerHTML = phi;
document.write(_new + "<br>");

//  variable redeclaration
var i = 0;
document.write("Value of i is: " + i + "<br>");
i = 10; //reseting 0 to 10
document.write("Now, i is equal to " + i + "<br>");