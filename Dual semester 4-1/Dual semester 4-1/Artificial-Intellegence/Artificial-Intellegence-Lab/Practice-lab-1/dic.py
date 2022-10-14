# -*- coding: utf-8 -*-
"""
Created on Fri Aug 12 15:26:24 2022

@author: Abdul Mutalib
"""

data = {
        "name" : "Md. Abdul Mutalib",
        "age" : 24,
        "ID" : 190303020001,
        "Session": "Fal'19"
        
        }

print(data)
print(len(data))

print(data["name"])

#inserting new data to dictionary

data["year"] = 2020
print(data)

# Update year
data.update({"year": 2022})
print(data)

# .remove can remove item from the dictionary
# del keyword can delete whole dictinary also specific value


for i in data:
    print(i)

for i in data.values():
    print(i)
for i in data:
    print(data[i])
    
    
data2 = data.copy()
print(data2)