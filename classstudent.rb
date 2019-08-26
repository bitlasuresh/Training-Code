class Student

    attr_accessor :firstname, :lastname
    attr_accessor :lgrade, :agrade


def initialize(fname, lname)  
    @firstname = fname  
    @lastname = lname  
    @grades = Array.new
end

def calcAverage
    sum = 0
    if @grades.size > 0
        @grades.each { |g| sum += g } 
        @agrade = sum / @grades.size
    else
        @agrade = 0
end
    setLetterGrade
    end

def addGrade(score)

     if score.is_a?(Integer) || score.is_a?(Float)
        @grades.push(score)
        calcAverage
end
end

def setLetterGrade
    if @agrade >= 90.0
       @lgrade = "A"

 elsif @agrade >= 80.0
       @lgrade = "B"

 elsif @agrade >= 70.0
       @lgrade = "C"

elsif @agrade >= 60.0
      @lgrade = "D"
else
      @lgrade = "F"
 end
end
end

def findClassAverage(studentsArray)
    classSum = 0.0
    studentsArray.each { |student| classSum += student.agrade }

    if studentsArray.size > 0
    return classSum / studentsArray.size
end
return 0
end

student1 = Student.new("John","Smith")

student1.addGrade(80)
student1.addGrade(100.0)
student1.addGrade(54.0)


student2 = Student.new("Mary","Johnson")
student2.addGrade(90.5)
student2.addGrade(90)
student2.addGrade(88.3)

classOfStudents = Array.new
classOfStudents[0] = student1
classOfStudents[1] = student2

classOfStudents.each { |student| puts "Student name: " + student.firstname + " " + student.lastname + " and their average was " + student.agrade.to_s + " " + student.lgrade }


puts "Class Average: " + findClassAverage(classOfStudents).to_s


