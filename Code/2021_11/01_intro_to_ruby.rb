# Welcome to P4E! 🥳

# 1. Data Types
# String
"Hello World"
"Happy to be here"

# Number
# Integer
10
2
23456

# Float
3.14
20.5
68.0

# Boolean
true
false

# 2. Puts and Print -> to display in the console
print "Hello World!"
print " And all of you!"
# Hello World! And all of you!
# (Same line with print)

puts "Hello World"
puts "And all of you!"
# Hello World! 
# And all of you!
# (New line with puts)

# 3. Math
# Addition
2 + 3

# Subtraction
43 - 56

# Multiplication
4 * 3

# Division
10 / 3 # division with integers, returns 3
10 / 3.0 # division with a float, returns 3.3333

# Modulo - remainder of division with integers
10 % 3 # returns 1, because (3 + 3 + 3 = 9)

# Exponentiation
2**3 # return 8 (2 * 2 * 2)

# 4. Variables
name = "Kieran"
puts name # "Kieran"

first_number = 10
second_number = 3

puts first_number + second_number

# Reassigning a value to a variable
name = "Kieran"
puts name # "Kieran"
name = "Ryan"
puts name # "Ryan"

# Naming convention in Ruby -> lower_snake_case
very_long_variable_name = "Hello World"

# 5. Methods
name = "Ryan"
puts name.upcase # "RYAN"
puts name # Ryan

# Methods with a bang (!) will change the value of the variable
name.upcase!
# same as:
name = name.upcase

puts name # RYAN


# To find the class of a variable
puts 1234.class # Integer
puts "1234".class # String

# Convert data types
puts "123".to_i # 123
puts 123.to_s # "123"

# 6. Comments
# Single-line comments with a pound sign
=begin
  Multi-line
  Comments
=end

# 7. Interpolation
first_name = "David"
puts "Hello, my name is #{name}" # "Hello, my name is David"

# It's a way to execute Ruby code within a string
puts "Hello, my name is #{name.upcase}" # "Hello, my name is DAVID"
puts "Two is #{1 + 1}" # "Two is 2"

# 8. Gets and Chomp
puts "What is your name?"
name = gets # user data will include a line return
name = gets.chomp # you get clean data

puts "Welcome #{name.capitalize}!"
