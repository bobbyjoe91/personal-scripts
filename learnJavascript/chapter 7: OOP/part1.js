// OOP in javascript
function println(_text){
    document.write(_text + "<br>");
}
//there are 2 ways to initialize new object
//(1) using object literal

var Human = {
    name : "",
    age : 0,
    height : 0.0,
    set : function(name, age, height){
        this.name = name;
        this.age = age;
        this.height = height;
    },
    get : function(){
        var str_name = "Name: " + this.name + "<br>";
        var str_age = "Age: " + this.age + "<br>";
        var str_height = "Height: " + this.height + "<br>";
        println(str_name + str_age + str_height);
    }
};

Human.set("Alex", 19, 165.30);
Human.get();

//(2) Using 'new Object()' syntax

var Shape = new Object();
Shape.name = "Square"; // create attribut name with value "Square"
Shape.sides = 4;
Shape.reset = function(name, sides){ //create method 'reset' to reset name and sides
    this.name = name;
    this.sides = sides;
};

println(Shape.name + "<br>" + Shape.sides);

Shape.reset("Hexagon",6);
println(Shape.name + "<br>" + Shape.sides + "<br>");

//(3) using object prototype

function Vehicle(name = "", wheels = 0){ //default value of function
    this.name = name,
    this.wheels = wheels,
    this.reset = function(name, wheels){
        this.name = name;
        this.wheels = wheels;
    }
    this.get = function(){
        var str_name = "Name: " + this.name + "<br>";
        var str_wheels = "Wheels: " + this.wheels + "<br>";
        println(str_name + str_wheels);
    }
}

bike = new Vehicle("Honda", 3);
car = new Vehicle("Jeep", 4);
empty = new Vehicle();

bike.get();
car.get();
empty.get();

/* WARNING 
    --Mutability of object in js--
    js object is mutable. It means if 2 object point to the same class, 
    then every reseted value in an object will change another object value which connect to the same class.

    To solve this problem, we can set the object-specific properties and the shared properties.
    see: https://hackernoon.com/prototypes-in-javascript-5bba2990e04b
         https://www.youtube.com/watch?v=pqB5X9cE5OA
*/