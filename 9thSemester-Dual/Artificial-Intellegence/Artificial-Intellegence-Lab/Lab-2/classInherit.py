
class Pet:
    def __init__(self, name, age):
        self.name = name
        self.age = age
class Cat(Pet):
    def __init__(self, name, age):
        super().__init__(name, age)
def Main():
    thePet = Pet("pet",3)
    Pat = Cat("Pat",3)

    print("Is pat a cat? "+str(isinstance(Pat,Cat)))
    print("Is Pat a pet? "+str(isinstance(Pat, Pet)))

if __name__ == '__main__':
    Main()