# -*- coding: utf-8 -*-
"""
Created on Mon Aug  1 17:01:17 2022

@author: MUTALiB
"""

s = " I am string"

s1 = s.upper()
s2 = s.lower()

print(s1,s2)

s3 = s.strip()

print(s3) # It's remove ' ' white space from the beging and ending


s4 = s.replace('string', 'StRinG')
print(s4)


s = "hey, python"

print(s.capitalize())
print(s.casefold())
print(s.count('e',0,10))
print(s.encode())




print(s1 + s2 + s3)



myName = "Mr. Frankling"
myAge = 234

print("My name is: "+"My age is: "+format(myAge))






