'''
    List is 
    - ordered
    - changeable
    - allow duplicates
'''

myList = ["Mutalib", "ibrahim", "iftekhar", "Jayed", "Saddam", "Delwar"]

print(myList)
print(type(myList))

for x in myList:
    print(x)

print("The length of myList: "+format(len(myList)))

personName = ["A", "B", "C", "D", "E", "F", "G", "H"]
personAge = [1234,2342,2342,25,5,52,15,2]
personYoungOld = [True, False, True, False, True, False, True, False]

print(type(personAge))
print(type(personName))
print(type(personYoungOld)) 

myInfo = list(("Mutalib", 24, "Male", "Bangladesh", "Student"))

print(myInfo)