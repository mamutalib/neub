# -*- coding: utf-8 -*-
"""
Created on Fri Aug 12 15:13:21 2022

@author: Abdul Mutalib
"""

mySet = {"Ai", "Micro Processor", "Algo", "DLD"}

print(type(mySet))
print(mySet)

for x in mySet:
    print(x)

mySet.add("Bio-Informatics")
print(mySet)

set1 = {"a", "b" , "c"}
set2 = {1, 2, 3}
set3 = [2,1,134,24]

set3 = set1.union(set2)
print(set3)

