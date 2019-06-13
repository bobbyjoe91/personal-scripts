//Selector

//  Select by ID (you can only have one different ID)
//we can cache 'document.getElementById(id_name)' in a variable
var id_select = document.getElementById("id");
id_select.innerHTML = "Welcome to the Shop";

//  Select by Class(es) (you can have more than one same classes)
//we consider class as array of classes in js
var class_select = document.getElementsByClassName("class");
class_select[0].innerHTML = "Feel free to shop";
class_select[1].innerHTML = "Menu"

//  Select by tag(s) (you can have more than one same tags)
var tag_select = document.getElementsByTagName('li');
tag_select[0].innerHTML = "Search Item";
tag_select[1].innerHTML = "Buy Item";
tag_select[2].innerHTML = "Payment Method";

//  Bonus
var powerful = document.querySelectorAll('ol > div'); 
//On the code above, I did a traversal. 'div' tag as child of 'ol' tag
powerful[0].innerHTML = "querySelectorAll";
/*if you want to choose id, type '#id_name'. if class, type '.id_name'.
  if tag, type 'tag_name_parent tag_name_child' or you can traverse it like CSS*/