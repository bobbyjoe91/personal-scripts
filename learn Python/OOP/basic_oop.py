class Class:
    name: "" # global variable of the class

    def setName(self, name): # self refers to the class itself
        self.name = name
    
    def getName(self):
        return "The classname is: " + self.name

object_class = Class()
class_name = "Object Oriented Programming"
object_class.setName(class_name)
#printing by using getter
print(object_class.getName())
#print without getter
print(object_class.name)
