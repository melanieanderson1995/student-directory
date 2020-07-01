@students = []

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def process(selection)
  case selection
    when "1"
      input_students
      #input the students
    when "2"
      show_students
      #show the students
    when "9"
      exit #terminates program
    else
      puts "I don't know what you meant, try again"
  end
end

def show_students
  print_header
  print_students_list
  print_footer
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  @students = []
  #get the first names
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    #get another name from the user
    name = gets.chomp
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "----------"
end

def print(students)
  students.each do |student|
    puts "#{@student[:name]} (#{@student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{@students.count} great students"
end

#nothing happens until we call the methods
interactive_menu
@students = input_students
print_header
print(students)
print_footer(students)
