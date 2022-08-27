## Student Class
class Student:
    def __init__(self, id):
        self.id = id
        self.courses = {
            "Algo": 0,
            "Net":0,
            "Ai":0,
            "ML":0
        }
        
## Grade class
class Grade:
    def __init(self,courseName):
        self.courseName = courseName
        self.attMarks = 0
        self.ttMarks = 0
        self.ms = 0
        self.sf = 0
        
    def __attPolicy1(self,c,p):
        per = (p*100)/c
        
        if per>=95:
            return 10
        elif per>=90:
            return 9
        elif per>=85:
            return 8
        elif per>=80:
            return 7
        elif per>=75:
            return 6
        elif  per>=70:
            return 5
        elif per>=65:
            return 4
        elif per>=60:
            return 3
        else:
            return 1
    
    def __attPolicy2(self,c,p):
        marks = 10-(c-p)
        
        if marks<=0:
            return 1
        return marks
    
    def __ttPolicy1(self,t,m):
        sum = 0
        for i in range(t):
            sum +=m[i]
        return sum/t
               
    def __ttPolicy2(self,t,m):
        sum = 0
        for i in range(t):
            sum +=m[i]
        return sum
    
    def getAttMarks(self):
        policyNo = int(input("Enter policy no For Attendance: "))
        c = int(input("Enter total class: "))
        p = int(input("Enter total present class: "))
        
        if policyNo == 1:
            return self.__attPolicy1(c,p)
        elif policyNo ==2:
            return self.__attPolicy2(c,p)\
    
    def getTTmarks(self):
        policyNo = int(input("Enter tutorial policy no: "))
        totalExam = int(input("Enter total Exam no: "))
        m_list = []
        for i in range(totalExam):
            m = int(input("Enter marks: "))
            m_list.append(m)
        
        if policyNo == 1:
            return self.__ttPolicy1(totalExam,m_list)
        elif policyNo ==2:
            return self.__ttPolicy2(totalExam,m_list)
        
    def getMsMarks(self):
        ms = float(input("Enter Mid Semester: "))
        return ms
    
    def getSfMarks(self):
        sf = float(input("Enter Final Semester: "))
        return sf
    
    
    def getTotal(self):
        self.attMarks = self.getAttMarks()
        self.ttMarks = self.getTTmarks()
        self.ms =self.getMsMarks()
        self.sf = self.getSfMarks()
        
        total = self.attMarks + self.ttMarks + self.ms + self.sf
        return total
        

## main function
def main():
    # _______Main Programme______
    id = int(input("Enter Student id: "))
    std = Student(id)
    
    c1 = Grade("Algo")
    c2 = Grade("Net")
    c3 = Grade("Ai")
    c4 = Grade("ML")
    
    c = input("Enter course Name: ")
    
    if c == c1.courseName:
        total = c1.getTotal()
    elif c == c2.courseName:
        total = c2.getTotal()
    elif c == c3.courseName:
        total = c3.getTotal
    elif c == c4.courseName:
        total = c4.getTotal
    else:
        print("Error Found!")
    
    
    std.courses[c] = total
    print(std.courses)


if __name__ == '__main__':
    main()
    