
## String reversing using class Iteration

class Reverse:
    def __init__(self,data):
        self.data = data
        self.index = len(data)
    def __iter__(self):
        return self
    def __next__(self):
        if self.index == 0:
            raise StopIteration
        self.index -= 1
        return self.data[self.index]
class Main():
    string_input = input()
    rev = Reverse(string_input)

    for i in rev:
        print(i)