//function is a codeblock
function alertBox(){
    alert("Javascript") //show alert box in the browser
}

//calling function
alertBox();

//parameter in function
function println(_text){
    var text = _text + "<br>"; //var text is local variable
    document.write(text);
}

println("Hello World");

//return value and more params
function Area(_length, _width){
    var _area = _length * _width; //var _area is local variable to Area function
    return _area;
}

println(Area(10,20));

var global = "This is global var";

function mystery(){
    println(global);
}

mystery();

//you can make global variable from a function too
var radius = 77;

function Area_Circle(_radius){
    phi = 3.1415;
    return (_radius*_radius*phi).toFixed(2);
}

//to use the global variable, you should call the function first
println(Area_Circle(radius));
println(phi);