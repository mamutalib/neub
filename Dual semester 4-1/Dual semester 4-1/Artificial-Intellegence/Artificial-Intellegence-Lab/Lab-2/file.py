import os
try:
    f = open("file.txt")
    print(f.read())
    f.close()
except:
    print("file not found")

try:
    f = open("file.txt","a")
    print(f.write("The file is written"))
    f.close()
except:
    print("file not found")

# creating new file

os.remove("file.txt")
