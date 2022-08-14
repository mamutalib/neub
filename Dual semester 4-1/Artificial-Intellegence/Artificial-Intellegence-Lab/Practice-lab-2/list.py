'''
    List is 
    - ordered
    - changeable
    - allow duplicates
'''

from distutils.log import info


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

myInfo = list(("Mutalib", 24, "Male", "Bangladesh", "Student")) #list  can be define like this syntex


# print(myInfo[0]) Will print only the first item

print(myInfo)
myInfo[0] = "Md. Abdul Mutalib"
print(myInfo)

myInfo.append(190303020001)
print(myInfo)

myInfo.extend(myList)
print(myInfo)

myInfo.remove("ibrahim")

print(myInfo)
print("\n")

print(myInfo)

for x in myInfo:
    print(x)

print('\n')    
for i in range(len(myInfo)):
    print(myInfo[i])

print('\n')
i = 0
while i <len(myInfo):
    print(myInfo[i])
    
    i+=1


[print(x) for x in myInfo]

print(len(myInfo))

print(myInfo)
print(myInfo[-5:-1])