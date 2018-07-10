function println(_text){
    document.write(_text + "<br>");
}

//Array

//  array is data structure that can contain any kind of data type
var arr = [6,2,7,3,8];
println("The content of arr are: " + arr);
println(arr[4]);
//  reseting array value;
arr[4] = 10;
println(arr[4]);
println("The content of arr are: " + arr);

//  array method

//  sort (alphabetical)
println("Alphabetical sort of arr: " + arr.sort());
//  sort (numerical)
println("Ascending numerical sort of arr: " + arr.sort(function(a, b){return a-b}));// ascending
println("Descending numerical sort of arr: " + arr.sort(function(a, b){return b-a}));// descending

//  reverse
//return an array with reverse order from index n-1 to 0
var arr2 = arr.reverse();
println(arr2);

//  concatenating
var arr3 = arr.concat(arr2) //amount of param in concat() is not limited
println(arr3);

//  length
println("length of arr3: " + arr3.length);

//  join
var names = ["Plato", "Aristotle", "Kant", "Sartre"];
println(names.join(" -- ")); // -- is separator. the result will be: "Plato -- Aristotle -- ..."
//there is also .split(separator). If separator == "", it will split per char

//  splice(start, n, content)
//for adding element
names.splice(4, 0, "Kirkegaard"); //add "Kirkegaard in index 4"
names.splice(0, 0, "Thales");
println(names);

//for removing n element
var n = 1;
names.splice(4, n);
println(names);

//for replacing n element with m element
n = 2;
names.splice(0, n, "Goethe");
println(names);
names.splice(0, n-1, "Heideger", "Nietszche");
println(names);

//we can assume javascript array as a stack which top element is the last index of array
//  pop
var names2 = names;
var last = names2.pop(); //we can use pop to get the last element by assigning it into var
println(last);
names2.pop(); //or delete the last element
println(names2);

//  push
names2.push("Camus", "Kant");
println(names2);

//  shift
var names3 = names;
var first = names3.shift();
println(first);
names3.shift();
println(names3);

//  unshift
names3.unshift("Voltaire");
println(names3);