# import os
# try:
#     f = open("file.txt")
#     print(f.read())
#     f.close()
# except:
#     print("file not found")

# try:
#     f = open("file.txt","a")
#     print(f.write("The file is written"))
#     f.close()
# except:
#     print("file not found")

# # creating new file

# os.remove("file.txt")
## Path Finding
import os
path = os.getcwd()
print(path)

# File Reading
f = open("test.txt",'r')
read = f.read()
print(read)
f.close()

f1 = open("google_stock_data.csv",'r')
print(f1.read())

# File Reding

f2 = open("test2.txt",'w')

write = f2.write("This is file writing")
print(write)

