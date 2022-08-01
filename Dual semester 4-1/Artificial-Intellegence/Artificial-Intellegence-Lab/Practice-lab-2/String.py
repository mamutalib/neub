# -*- coding: utf-8 -*-
"""
Created on Mon Aug  1 16:31:11 2022

@author: MUTALiB
"""

txt = """lorempimpsum lorem lorem """
print(txt)
print('lorem' in txt)

for x in txt:
    print(x)
for x in txt:
    print(x)
    
print(len(txt))

print("mutalib" in txt)
print("mutalib" not in txt)

if "mutalib" in txt:
    print("Mutalib in txt")
elif "mutalib" not in txt: # elif = else if
    print("Mutalib not in txt")

## Slicing

txt = 'This is slicing text'
print(txt[2:10]) # slicing between range.(not included 10)
print(txt[:20]) # slicing from first index (0)
print(txt[0:]) #slicing to end

print('\n')
t = "Hello, World!"
print(t[-5:-2])