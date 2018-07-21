/* Attribute is additional info typed in a tag 
    e.g:
    <img src=x.jpg width=400 class="image">
    here we have src, width, and class as attributes of img
*/

//  set an attribute
var img = document.getElementById('image');
var size = 400;
img.setAttribute('width', size.toString()); //node.setAttribute(attr, value)

//  edit an attribute
var text_box = document.getElementById('text_box');
text_box.value = "This is " + size.toString() + "px JS logo"; //node.attribute = 'new value';
