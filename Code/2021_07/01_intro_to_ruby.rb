# Welcome to P4E! 🥳

# 1. Data Types
# String
"Hello World"
"Happy to be here"
"Anything, really"

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
print "Hello World" # no line return
puts "Happy to be here" # adds a line return

# 3. Math
# Addition
2 + 3

# Subtraction
43 - 56

# Multiplication
4 * 3

# Division
20 / 5
10 / 3 # division with integers, returns 3
10 / 3.0 # division with a float, returns 3.3333

# Modulo - remainder of division with integers
10 % 3 # returns 1, because (3 + 3 + 3 = 9)

# Exponentiation
2**3 # return 8 (2 * 2 * 2)

# 4. Variables
name = "Alex"
puts name # "Alex"

age = 34
puts age + 1 # 35
puts age # 34

# Reassigning a value to a variable
age = age + 1
puts age # 35

# Shortcut to increment
age += 1 # 36

# Naming convention in Ruby -> lower_snake_case
name
first_name
my_age
very_long_variable_name

# 5. Methods
name = "aLeXandrE"
puts name.upcase # "ALEXANDRE"
puts name.capitalize # "Alexandre"
puts name.length # 9
puts name # "aLeXandrE"

# Methods with a bang (!) will change the value of the variable
name.upcase!
puts name # "ALEXANDRE"

# To find the class of a variable
puts 1984.class # Integer
puts "1984".class # String

# Convert data types
puts "1984".to_i # 1984
puts 1984.to_s # "1984"

# Methods with a question mark (?) return true or false
puts 10.even? # true
puts 10.odd? # false

# 6. Comments
# Single-line comments with a pound sign
=begin
  Multi-line
  Comments
=end

# 7. Interpolation
first_name = "marie"
puts "Hi! My name is first_name" # will just output "first_name" as string
puts "Hi! My name is #{first_name}" # "Hi! My name is marie"

# It's a way to execute Ruby code within a string
puts "Hi! My name is #{first_name.capitalize}" # Hi! My name is Marie"
puts "Two is #{1 + 1}" # "Two is 2"

# 8. Gets and Chomp
puts "What is your first name?"
first_name = gets # user data will include a line return - "\n"
first_name = gets.chomp # you get clean data

puts "What is your last name?"
last_name = gets.chomp

puts "Welcome #{first_name.capitalize} #{last_name.capitalize}!"

# You can also apply a method directly when you get the data from the user
puts "What is your first name?"
first_name = gets.chomp.capitalize

puts "What is your last name?"
last_name = gets.chomp.capitalize

puts "Welcome #{first_name} #{last_name}!"
