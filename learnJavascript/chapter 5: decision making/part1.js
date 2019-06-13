function println(_text){
    document.write(_text + "<br>");
}

//  Boolean data type
var p = true; //declaration
var q = false;

//  if... else...
var cash = 3000;
var price = 4000;

//logical operator for comparison are: >= <= > < != ==
if (cash >= price){
    alert("transaction succeed");
}
else{
    alert("transaction fail");
}

//logical operator for more criteria: && ||
var user_name = "boston35";
var password = "941181"

if(user_name == "boston35" && password == "941181"){
    alert("login succeeded");
}
else{
    alert("login failed, please try again");
}

//  if ... else if ... else ...
var user_name2 = "rick_m0rty";
var password2 = "d4thbloss0m";

if(user_name2 == "rick_m0rty" && password2 == "d4thbloss0m"){
    println("Login succeeded");
}
else if(user_name2 != "rick_m0rty" && password2 == "d4thbloss0m"){
    println("Wrong username");
}
else if(user_name2 == "rick_m0rty" && password2 != "d4thbloss0m"){
    println("Wrong password");
}
else{
    println("Login failed");
}

//you can even do nested if

// switch ... case ...
var number = 102185;

switch ( number%5 ){
    case 0:
        alert("Divisible by 5");
        break;
    case 1:
        alert("Remainder is 1");
        break;
    case 2:
        alert("Remainder is 2");
        break;
    case 3:
        alert("Remainder is 3");
        break;
    case 4:
        alert("Remainder is 4");
        break;
    default:
        alert("Error"); 
}