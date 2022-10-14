# -*- coding: utf-8 -*-
"""
Created on Mon Aug  1 15:28:55 2022

@author: MUTALiB
"""

"""
x = 'I am Abdul Mutalib'

def myName():
    print(x)
    
myName()
"""
# We can do following code using global keyword

def myName():
    global x
    x = "Abdul Mutalib"
    print(x)
myName()

print("My name is "+x)
