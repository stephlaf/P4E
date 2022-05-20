# Hashes and Symbols!!!!!

# The difference between hashes and arrays

# In arrays, the index order of the values in your array matters.

names = [
  "Jane",
  "Mike",
  "Ja'Nya"
  ]

# Hashes are tied to key and value pairs

names_hash = {
  "name_three" => "Ja'Nya",
  "name_two" => "Jane",
  "name one" => "Mike"
 }

#

 puts names[0] # This will output a different value based on where your values are placed in your array

 puts names_hash["name one"] # This code will always output the same value, no matter the order

#  Why symbols? Symbols can't be changed once created, and only one copy exists at a given time
# Symbols makes it easier on memory

"hello" # They are each a different instance of the same data
"hello" # They are each a different instance of the same data

# Than using these symbols:

:hello # same symbol
:hello # same symbol

#  C. R. U. D. Review

# Create

meals = Hash.new
meals = {}

# Update

meals["breakfast"] = "Eggs"
meals["lunch"] = "fondue"
meals["dinner"] = "Steak"

# Read

puts meals["breakfast"]

# Delete

meals.delete("breakfast")

# p meals

meals = {
  :breakfast => "pancakes, croissant & BACON",
  :lunch => "sushi",
  :dinner => "tacos"
}

# p meals

meals = {
  breakfast: "pancakes & BACON",
  lunch: "burgers",
  dinner: "spaghetti"
}

# Converting Symbols to strings

meal = "breakfast"

meal_sym = meal.to_sym
# :breakfast

meal_sym.to_s

# "breakfast"

# this is the new ruby way to write a hash: LOOK HOW EASY IT IS!!

meals = {
  breakfast: "pancakes & BACON",
  lunch: "burgers",
  dinner: "spaghetti"
}

# Students and grades

students = {
  sarah: 95,
  cee_jay: 85,
  marina: 75,
  camille: 74,
  reem: 50,
  kieran: 30
}

# using the .select method to return a subset of our hash using a CONDITIONAL true/false statement

puts students.select { |student, grade| grade > 60 }

# The result is: { :sarah => 95, :cee_jay => 85, :marina => 75, :camille => 74 }

# iterating over only keys or only values

students.each_key { |key| puts "Hi my name is #{key.to_s}!" }

students.each_value { |value| puts value}

# add a student to our new hash!

puts "What is your name?"

name = gets.chomp

puts "what is your grade?"

grade = gets.chomp

students[name.to_sym] = grade.to_i

p students
