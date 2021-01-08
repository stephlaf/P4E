# Welcome to P4E 🎉

# Classes (types) of Objects
# String
print "Hello world!"
puts "Happy to be here 😃"

# Integer (numbers)
# Addition
puts 1 + 2

# Substraction
puts 34 - 99

# Multiplication
puts 2 * 8

# Division
puts 10 / 2

# Exponentiation
puts 2 ** 3

# Modulo (remainder of division)
puts 10 % 3

# Float (precise, decimals)
puts 10.0 / 3.0

# Finding the `class` of an Object
puts "1984".class
puts 1984.class

# Converting a String into an Integer
puts "1984".to_i

# Chaining methods 😳
puts "1984".to_i.class

# Boolean
puts true.class
puts false.class

# Variables
# I am assigning the value Stephane to the variable `name`
name = "stEpHaNe"
puts name.upcase
puts name

# ⚠️ methods ending with a Bang (!) change the value of the Object it is called upon
puts name.upcase!
puts name

# Another method
puts name.capitalize

# Get the number of characters in a String
puts name.length

# Variables with Integers
age = 99
puts age

# Computing with the value stored in `age`
puts age + 1

# # I am re-assigning a new value to the variable `age`
age = age + 1
puts age # => 100

# Methods ending with a `?` will return true or false
age = 24
puts age.even?
puts age.odd?

# Interpolation: executing Ruby code inside a String
name = "solene"
puts "Hello #{name}!"
puts "Hello #{name.capitalize}!"

puts "Two is #{1 + 1}"

# Interacting wit the user
puts "Welcome user! What is your first name?"
f_name = gets.chomp
# p f_name

puts "And your last name?"
l_name = gets.chomp

puts "Why there, hello #{f_name.capitalize} #{l_name.capitalize}!"
