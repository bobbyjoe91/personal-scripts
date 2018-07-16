//  looping in js
function println(_text){
    document.write(_text + "<br>");
}


//  for looping
var u = [0,1,1];
var n = 10;

for(var i = 3; i <= n; i++){
    u[i] = u[i-1] + u[i-2]; 
}

println(u[n]);

//  while looping
var i = 1;

while(i <= 10){
    println("Iteration " + i);
    i++;
}
//if you use innerHTML for printing, you should add the text iteratively

//  do .. while looping
i = 10;

do{
    println("Iteration " + i)
}
while (i < 10)
//do ... while will do one iteration before checking the condition