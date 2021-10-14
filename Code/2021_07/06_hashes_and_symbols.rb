# Hashes and Symbols - Module 6

# 1. HASHES RECAP

# C.R.U.D:

# C. Create
# R. Read
# U. Update
# D. Delete

# C. Create a hash:

new_hash = {}

# or

new_hash = Hash.new

#or

meals = {
  "breakfast" => "bacon and eggs",
  "lunch" => "pasta",
  "snack" => "dill pickle chips",
  "dinner" => "Steak and salad"
}

# R. Read a hash

puts meals["breakfast"]

# U. Update an element from a hash

meals["breakfast"] = "Muesli"

# D. Delete an element from a hash

meals.delete("snack")

################################
# 2. CONVERT SYMBOL TO STRING

my_symbol = :breakfast

my_string = my_symbol.to_s

p my_string
# => "breakfast"

my_string = "Hello"

my_symbol = my_string.to_sym

p my_symbol
# => :Hello

################################
# 3. SYMBOLS AS KEYS

# String as keys:

meals = {
  "breakfast" => "bacon and eggs",
  "lunch" => "chicken soup",
  "snack" => "chocolate cookies",
  "dinner" => "lasagna"
}

#Symbols as keys (old way):

meals = {
  :breakfast => "bacon and eggs",
  :lunch => "chicken soup",
  :snack => "chocolate cookies",
  :dinner => "lasagna"
}

# RUBY NEW SYNTAX:

#Symbols as keys (correct way):

meals = {
  breakfast: "bacon and eggs",
  lunch: "chicken soup",
  snack: "chocolate cookies",
  dinner: "lasagna"
}

# R. Read

puts breakfast_food = meals[:breakfast]

# U. Update

meals[:breakfast] = "muesli"

# D. Delete

meals.delete(:snack)

################################
# 4. SETTING DEFAULT VALUES

meals = Hash.new("Eat whatever you want!")
meals[:breakfast] = "Cereal"
meals[:lunch] = "Pasta"

p meals
# => {:breakfast=>"Cereal", :lunch=>"Pasta"}

p meals[:late_night_snack]
# => "Eat whatever you want!"

################################
# 5. SELECTING FROM HASH

grades = {
  jessica: 98,
  peter: 30,
  john: 99,
  sarah: 86
}

high_grades = grades.select do |student, grade|
  grade > 90
end

puts high_grades
# => {:jessica=>98, :john=>99}

################################
#6. ITERATING OVER ONLY KEYS OR ONLY VALUES

my_hash = {
  one: 1,
  two: 2,
  three: 3
}

my_hash.each_key { |k| puts k }
# => one two three

# Same as:
# my_hash.each_key do | k |
#   puts k
# end

my_hash.each_value { |v| puts v }
# => 1 2 3

# Same as:
# my_hash.each_value do |v|
#  puts v
# end

grades = {
  jessica: 98,
  nirali: 98,
  peter: 30,
  john: 99,
  sarah: 86
}

grades.each_key do |student|
  puts student
end
# => jessica nirali peter john sarah

grades.each_value do |grade|
  puts grade
end
# => 98 98 30 99 86

# If we wanted both keys and values we already know the drill:

grades.each do |student, grade|
  puts "#{student} grade is: #{grade}"
end

# Change the value of each grade in a .each iteration

grades = {
  jessica: 98,
  nirali: 98,
  peter: 30,
  john: 99,
  sarah: 86
}

grades.each do |student, grade|
  grades[student] = grade + 1
end

# Add a new key-value pair to the hash

grades = {
  jessica: 98,
  peter: 30,
  john: 99,
  sarah: 86
}

puts "What is the name of the student?"
student = gets.chomp.to_sym

puts "What is the grade?"
grade = gets.chomp.to_i

grades[student] = grade

################################
# Codecademy exercise, line by line:

# We have an array of strings we’d like to later use as hash keys, but we’d rather they be symbols.
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Create a new variable, symbols, and store an empty array in it.
symbols = []

# Use .each to iterate over the strings array.
# For each s in strings, use .to_sym to convert s to a symbol and use .push to add that new symbol to symbols.

strings.each do |s| # 's' here will represent each language included in the 'strings' array
  symbols.push(s.to_sym) # we push/add the value of 's', converted to a symbol, to the symbols array
end

# Print the symbols array.
print symbols
