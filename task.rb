puts "Enter the number of students"
n = gets.to_i
student = Array.new(10) { Array.new(2)}
for i in 0..n-1
	puts "Enter Details of #{i+1} student.."
	print "name : "
	student[i][0] = gets
	print "Roll Number : "
	student[i][1] = gets
end
for i in 0..n-1
	puts "Name of student #{i+1} is #{student[i][0]}"
	puts "Name of student #{i+1} is #{student[i][1]}"
end

