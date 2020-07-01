=begin
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Rathed", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november},
]
=end

#first we print the list of students
def input_students(name = "Student", cohort = "Cohort", hobby = "Hobby")
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first names
  name = gets.chomp
  puts "Please enter cohort"
  cohort = gets.chomp.to_sym
  puts "Please enter hobbies"
  hobby = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    if name
      students << {name: name, cohort: cohort, hobby: hobby}
    end
    puts "Now we have #{students.count} students"
    name = gets.chomp
    #get another name from the user
  end
  #return the array of input_students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "----------"
end

def print(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}, #{student[:name]} (#{student[:cohort]} cohort), hobby is #{student[:hobby]}".center(20)
  end
end

def print_footer(students)
  if students.count = 1
    puts "Overall, we have 1 great student"
  elsif students.count > 1
  puts "Overall, we have #{students.count} great students"
  end
end

#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
