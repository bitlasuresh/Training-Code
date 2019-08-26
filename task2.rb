class StudentsMarkDetails

def student
	puts "Enter the number of student"
	n = gets.chomp.to_i
	n.times do |n|
		puts "Enter the student #{n+1} rollnumber:"
		rno = gets.chomp
		h = {}
		puts "Enter the student name #{n+1} name:"
		n = gets.chomp
		puts "Enter the subject #{n+1} :"
		n = gets.chomp
		puts "Enter the subject #{n+2} :"
		n = gets.chomp
		puts "Enter the subject #{n+3} :"
		n = gets.chomp
		puts "Enter the student #{n+1} mark :"
		mark1 = gets.chomp.to_i
		puts "Enter the student #{n+1} mark :"
		mark2 = gets.chomp.to_i
		puts "Enter the student #{n+1} mark :"
		mark3 = gets.chomp.to_i
		h = {{rollnumber:rno} => {{name:name} => {sub1: mark1,sub2:mark2,sub3:mark3}}}
end

		obj.class = StudentsMarkDetails.new
		obj.class.get.mark.ins(mark1,mark2,mark3)
		obj.class.student
		
