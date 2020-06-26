
#1. YIELD

def welcome_message
  print "Welcome, "
  yield
  puts ". Hope you enjoy today's Ruby session!"
end

puts "What's your student number?"


student_number = gets.chomp

welcome_message { print "#{student_number}" }



puts "What's your name?"

student_name = gets.chomp

welcome_message { print "#{student_name}" }


#2. PROCS

#DEFINING A PROC

my_proc = Proc.new { puts "I’m a proc!" }


# CALLING A PROC DIRECTLY

my_proc = Proc.new { puts "I’m a proc!" }
my_proc.call


# PASSING A PROC TO A METHOD

today_lecture_proc = Proc.new do
    puts "Today we’ll learn about procs."
end

def welcome_message
    print "Welcome!"
    yield
end

welcome_message(&today_lecture_proc)


puts “-----------”


students_grades = [10, 15, 5, 4, 19, 14, 2, 7, 13]

under_10 = Proc.new { |grade| grade < 10 }

puts students_grades.select(&under_10)


# PROC NOT CARING ABOUT THE NUMBER OF ARGUMENTS IT GETS

my_proc = Proc.new { |x, y| puts "We're adding #{x} and #{y}" }
my_proc.call


# PROC NOT GIVING CONTROL BACK TO METHOD AFTER RETURNING

def proc_method
  my_proc = Proc.new { return "I'm a proc!"}
  my_proc.call
  "Last line of proc method"
end

puts proc_method



#3. LAMBDAS

#DEFINING A LAMBDA

my_lambda = lambda { puts “I’m a lambda” }


# CALLING A LAMBDA DIRECTLY

my_lambda = lambda { puts “I’m a lambda” }
my_lambda.call

puts lambda_method


# PASSING A LAMBDA TO A METHOD

today_lecture_lambda = lambda do
    puts "Today we’ll learn about lambdas."
end

def welcome_message
    print "Welcome!"
    yield
end

welcome_message(&today_lecture_lambda)


puts "------------"

names = ["mariana", :maria, "zoe", :lucas]

filter_symbols = lambda { |x| x.is_a? Symbol }

puts names.select(&filter_symbols)


# LAMBDA CARING ABOUT THE NUMBER OF ARGUMENTS IT GETS

my_lambda = lambda { |x, y| puts "We're adding #{x} and #{y}" }
my_lambda.call(2,4)  # unlike with procs, we’ll get an error if we don’t pass any arguments


# LAMBDA GIVING CONTROL BACK TO METHOD AFTER RETURNING

def lamba_method
    my_lambda = lambda { return  "I'm a lambda!" }
    my_lambda.call
    "Last line of lambda method"
end

puts lambda_method


#4. METHOD NAMES AS PROCS

names = ["mariana", "mark", "peter"]

puts names.each { |name| name.capitalize! }

puts "........"

puts names.each(&:capitalize!)

puts "  "

puts "example nr 2:"

puts "  "

strings = ["mariana", "mark", "peter"]

puts strings.each { |name| name.upcase! }

puts "........"

puts nums = strings.each(&:upcase!)
