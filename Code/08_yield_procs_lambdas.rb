####################
##  Blocks recap  ##
####################


names = ["Nawel", "Stef", "MG"]

names.each do |name|
    name = name.reverse.upcase
    puts name
end
#LEWAN
#FETS
#GM



# .map to store result in a new array

names = ["Nawel", "Stef", "MG"]

new_array_names = names.map { |name| name.reverse.upcase }

p new_array_names
#["LEWAN", "FETS", "GM"]

p names
#["Nawel", "Stef", "MG"]



# Modify original array with destructive method:

names = ["Nawel", "Stef", "MG"]

names.map! do |name|
    name = name.reverse
    name.upcase
end

p names
#["LEWAN", "FETS", "GM"]





#############
##  YIELD  ##
#############


#Method:

def yield_test
    yield
end

#Calling method with a block:

yield_test { puts "Tested yield!" }

#Calling method with no block will cause an error:

yield_test 
#ERROR



def welcome_message
    print "Welcome, "
    yield if block_given?
end

welcome_message
#^Calling method with no block
#No error because I added 'if block_given?' after yield

puts "What is your student number?"
print "> "
student_number = gets.chomp

welcome_message { print "#{student_number}" }
#^Calling method with block



# Using arguments and parameters.

puts "What is your student number?"
print "> "
student_number = gets.chomp

def welcome_message(course)
    new_course_name = "#{course.capitalize}-101"

    print "Welcome, "
    yield(new_course_name)

    puts "Hope you like today's #{course} session!"
end

course = "ruby"

welcome_message(course) do | new_course_name |
    print "#{student_number}, "
    puts "enjoy the #{new_course_name} course!"
end


# This will show:

# "Welcome 17, enjoy the Ruby-101 course!"
# "Hope you like today's ruby session!"


# Don't worry if you don't understand this completely, ask us any questions to clarify if you need to!





#############
##  PROCS  ##
#############


#DEFINING A PROC

my_proc = Proc.new { puts "I’m a proc!" }
# or
my_proc = proc { puts "I’m a proc!" }


# CALLING A PROC DIRECTLY

my_proc = Proc.new { puts "I’m a proc!" }
my_proc.call


# PASSING A PROC TO A METHOD

today_lecture_proc = Proc.new do
    puts "Today we’ll learn about procs."
end

def welcome_message
    print "Welcome! "
    yield
end

welcome_message(&today_lecture_proc)
# "Welcome! Today we’ll learn about procs."



students_grades = [10, 15, 5, 4, 19, 14, 2, 7, 13]

under_10 = Proc.new { |grade| grade < 10 }

puts students_grades.select(&under_10)





#############################
##  METHOD NAMES AS PROCS  ##
#############################


names = ["Nawel", "Stef", "MG"]


names.map! { |name| name.reverse }

# Same as:

names.map!(&:reverse)

# Built in method becomes a proc
# Only works with 1 method at a time


names.map!(&:capitalize)
names.map!(&:upcase)





###############
##  LAMBDAS  ##
###############


#DEFINING A LAMBDA

my_lambda = lambda { puts "I’m a lambda!" }


# CALLING A LAMBDA DIRECTLY

my_lambda = lambda { puts "I’m a lambda!" }
my_lambda.call


# PASSING A LAMBDA TO A METHOD

today_lecture_lambda = lambda do
    puts "Today we’ll learn about lambdas."
end

def welcome_message
    print "Welcome! "
    yield
end

welcome_message(&today_lecture_lambda)
# "Welcome! Today we’ll learn about lambdas."



# More examples:

names = ["Nawel", "MG", "Stef", :solene, :patrick]

filter_symbols = lambda do |x|
    x.is_a? Symbol
end

names_symbols = names.select(&filter_symbols)

p names_symbols
# [:solene, :patrick]



numbers = [1, 5, 10, 55, 88, 99]

filter_numbers = lambda do |num|
    num > 50
end

selected_numbers = numbers.select(&filter_numbers)

p selected_numbers
# [55, 88, 99]





###############################################
##  PROC VS LAMBDA - WHAT'S THE DIFFERENCE?  ##
###############################################

# A couple of differences in behavior:



# LAMBDA CARING ABOUT THE NUMBER OF ARGUMENTS IT GETS:

my_lamba = lambda { |x, y| puts "Displaying #{x} and #{y}" }

my_lamba.call(2, 5)
# "Displaying 2 and 5"

# my_lamba.call  =>  ERROR, expected 2 arguments



# PROC NOT CARING ABOUT THE NUMBER OF ARGUMENTS IT GETS:

my_proc = proc { |x, y| puts "Displaying #{x} and #{y}" }

my_proc.call
# "Displaying   and  "

# No error
# parameters become  nil  if no arguments are passed



# LAMBDA GIVING CONTROL BACK TO THE METHOD IT WAS CREATED IN AFTER RETURNING:

def lambda_method
    my_lambda = lambda do
        puts "I'm a lambda"
        return
    end
    my_lambda.call

    puts "The rest of the method WILL be executed too!"
    puts "These 2 texts WILL show up!"
end

lambda_method



# PROC NOT GIVING CONTROL BACK TO THE METHOD IT WAS CREATED IN AFTER RETURNING:

def proc_method
    my_proc = proc do 
        puts "I'm a proc!"
        return
    end
    my_proc.call

    puts "The rest of the method will NOT be executed. :("
    puts "These 2 texts won't show up"
end

proc_method
