class Student:
    def __init__(self, id):
        self.id = id
        self.courses = { "Algo":0,"Net":0,"AI":0,"ML":0 }
    
        

class Grade:
    def __init__(self, course_name):
        self.course_name = course_name
        self.attmarks = 0
        self.ttmarks = 0
        self.ms = 0
        self.sf = 0
        
        
    def __att_policy1(self,c,p):
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
        elif per>=70:
            return 5
        elif per>=65:
            return 4
        elif per>=60:
            return 3
        else:
            return 1
        
        
        
    def __att_policy2(self,c,p):
        marks = 10-(c-p)
        if marks <= 0:
            return 1
        return marks
    
    def __tt_policy1(self,t,m):
        
        sum =0
        for i in range(t):
            sum += m[i]
        return sum/t
            
    
    def __tt_policy2(self,t,m):
        sum =0
        for i in range(t):
            sum += m[i]
        return sum/t
        
        
    def getAttMarks(self):
        policy_no = int(input("Enter policy no For Attendence: "))
        c = int(input("Enter Total class: "))
        p = int(input("Enter totel present: "))
        if policy_no == 1:
            return self.__att_policy1(c,p)
        elif policy_no == 2:
            return self.__att_policy2(c,p)
        
    def getTtMarks(self):
        policy_no = int(input("Enter policy no For TT: "))
        total_exam = int(input("Enter Total Exam"))
        m_list = []
        for i in range(total_exam):
            m = int(input("Enter marks: "))
            m_list.append(m)
        
        if policy_no == 1:
            return self.__tt_policy1(total_exam,m_list)
        elif policy_no == 2:
            return self.__tt_policy2(total_exam,m_list)
        
    def getMsMarks(self):
        ms = float(input("Enter Mid Semester marks"))
        return ms
        
            
    def getSfMarks(self):
        sf = float(input("Enter Semester final marks"))
        return sf
    
    def getTotal(self):
        self.attmarks = self.getAttMarks()
        self.ttmarks  = self.getTtMarks()
        self.ms =self.getMsMarks()
        self.sf = self.getSfMarks()
        
        
        total = self.attmarks + self.ttmarks + self.ms+ self.sf
        return total
        
        
    
        
def main():
    # =======Main APP ======
    id = int(input("Enter Student ID"))
    st1 = Student(id)
    
    c1 = Grade("Algo")
    c2 = Grade("Net")
    c3 = Grade("AI")
    c4 = Grade("ML")
    
    c = input("Enter course name: ")
    
    if c== c1.course_name:
        total = c1.getTotal()
       
    elif c== c2.course_name:
        total = c2.getTotal()
    elif c== c3.course_name:
        total = c3.getTotal()
    elif c== c4.course_name:
        total = c4.getTotal()
    else:
        print("Error found!")
        
   
    
    
    st1.courses[c] = total
    
    print(st1.courses)
        


if __name__ = '__main__':
    main()