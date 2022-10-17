# -*- coding: utf-8 -*-
"""
Created on Tue Aug  2 00:32:19 2022

@author: MUTALiB
"""

names = ["Mutalib", "Jakir", "Ibrahim", "Samrat", "Shahriar The Shera",  "Rahat"]
print(names)

print(len(names))

print(type(names))

print(names[2:5])

if 'Mutalib' in names:
    print("Yes. Mutalib is exist in the list")
    
    
names.insert(2, "Ariyan")
names.append("Jayed ")
print(names)

names2 = ["hello", "i am",  "fine"]

names.extend(names2)
print(names)