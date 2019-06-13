# using init as setter

class Cars:
    name = ""
    top_speed = 0
    color = ""

    def __init__(self, name, top_speed, color):
        self.name = name
        self.top_speed = top_speed
        self.color = color

    def getInfo(self):
        info = "The " + self.color + " " + self.name + " has top speed of " + str(self.top_speed) + " kmh."
        return info

show_room = Cars("Ferrari", 300, "red") # this is how you invoke the init
print(show_room.getInfo())