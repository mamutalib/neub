def hello(name):
    print("Hello, "+name+" sir")
    


# sum function
def sum(n):
    sum = 0
    for i in range(n+1):
        sum = sum+i;
    return sum;

def sumRecursion(n):
    if n==0:
        return n
    else:
        return n + sumRecursion(n-1)
    

hello("Mutalib")
print(sumRecursion(5))
print(sum(5))