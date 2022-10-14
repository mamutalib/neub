# -*- coding: utf-8 -*-
"""
Created on Fri Aug 12 14:47:02 2022

@author: Abdul Mutalib
"""

myTuple = ('Mutalib', 'Samrat', 'Khan')

print(type(myTuple))
print(myTuple)

for i in myTuple:
    print(i)
    
if  'Khan' in myTuple:
    print('Khan is exist in Tuple')
    
    
# Since Tuple is unchangeable, we change by following a simple stpes
'''
    convert Tuple to list
    change the list
    and convert list to Tuple
'''

temp = list(myTuple)
temp[2] = 'Hasan'
myTuple = tuple(temp)

print(myTuple)

for i in range(len(myTuple)):
    print(format(i) +" = "+myTuple[i])













