var text_box = document.getElementById('text_box');

/* In element operation, node can refer to created node or a tag with particular ID */

//  Adding element1
var create = document.createElement('h2');
var text = document.createTextNode('Lorem Ipsum');

create.appendChild(text); //this should create <h2>Lorem Ipsum</h2> as 'Lorem Ipsum' is a text node
text_box.appendChild(create); 
//the code above should insert '<h2>Lorem Ipsum</h2>' as the child of '<div id="text_box">'

/* Illustration in HTML
<div id="text_box">
    <div id="text1">This is your Text 1</div>
    <h2>Lorem Ipsum</h2>
</div>
*/

//  Replacing element
var create2 = document.createElement('h3');
var text2 = document.createTextNode('Element operation in JS');

//'<div id="text1">This is Text 1</div>' will be replaced with '<h3>Element Operation in JS</h3>'
create2.appendChild(text2);
text_box.replaceChild(create2, text1); //node.replaceChild(new_node, old_node)

//  Deleting Element
text_box.removeChild(create);
document.write("Lorem Ipsum had been deleted");