class Student
  attr_accessor :s1, :s2, :s3
  attr_accessor :m1, :m2, :m3

  def initialize
    self.s1 = nil
    self.s2 = nil
    self.s3 = nil
    self.m1 = nil
    self.m2 = nil
    self.m3 = nil
  end

  def student_details
    puts "Hello! Welcome.."
    print "Enter the number of students to store data : "
    num = gets.to_i
    stud = {}
    num.times do |n|
      temp = {}
      print "Enter Roll number of Student #{n + 1} : "
      rno = gets.to_i
      print "Enter name of Student #{n + 1} : "
      name = gets.chomp

      puts "Now Enter name of subject and marks of #{name}"

      3.times do |p|
        puts "Enter the the name of subject #{p + 1} : "
        instance_variable_set("@s#{p + 1}", gets.chomp)
        puts "Enter the mark of subject #{p + 1} : "
        instance_variable_set("@m#{p + 1}", gets.chomp)
      end
      temp = { name: name, s1: @s1, m1: @m1, s2: @s2, m2: @m2, s3: @s3, m3: @m3 }
      stud = { rno => temp }
    end
    print_result(stud)
  end

  def print_result(stud)
    puts stud.key
  end
end

obj = Student.new
stu = obj.student_details