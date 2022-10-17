class Person:
    def __init__(self,name, year):
        self.name = name
        self.year = year

    def getName(self):
        return self.name
    def  set_name(self,newName):
        self.name = newName
    def getSummery(self):
        return f"Name: {self.name}, Dob:{self.year}"

class Bus:
    name = 'Bus'
    def __init__(self,busName):
        self.busName = busName
        print(busName)
    def setName(self,newName):
        self.newName = newName
        print("My bus name is: " + newName)

p = Person("Mutalib", 2000)
print(p.getName())
print(p.set_name("Md. Abdul Mutalib"))
print(p.getSummery())

b = Bus('Ana')
b.setName("Shamoli")
