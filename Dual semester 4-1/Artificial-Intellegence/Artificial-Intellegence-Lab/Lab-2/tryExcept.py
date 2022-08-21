
arr = [int(x) for x in input().split()]
sum = 0
for x in arr:
    sum += x

try:
    print(sum)
    print(arr)
except:
    print("There has an Error")
