# Hashes and Symbols

# 1. HASHES RECAP

# C. R. U. D

# C. Create
# R. Read
# U. Update
# D. Delete

# C. Create a hash:

new_hash = {}

# or

new_hash = Hash.new

# or

meals = {
  "breakfast" => "bacon and eggs",
  "lunch" => "pasta",
  "dinner" => "Steak and salad"
}

# R. Read a hash

p meals["breakfast"]
# "bacon and eggs"

# U. Update an element from a hash

meals["breakfast"] = "Pancakes"

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

# Symbols as keys (old way):

meals = {
  :breakfast => "bacon and eggs",
  :lunch => "chicken soup",
  :snack => "chocolate cookies",
  :dinner => "lasagna"
}


# RUBY NEW SYNTAX:

# Symbols as keys (correct way):

meals = {
  breakfast: "bacon and eggs",
  lunch: "chicken soup",
  snack: "chocolate cookies",
  dinner: "lasagna"
}

# R. Read

p meals[:breakfast]

# U. Update

meals[:breakfast] = "pancakes"

# D. Delete

meals.delete(:snack)



################################
# 4. SETTING DEFAULT VALUES

# Set a default value when creating a hash like this:

meals = Hash.new("Eat whatever you want!")

p meals
# empty hash
# {}

meals[:breakfast] = "bacon and eggs"
p meals[:breakfast]
# "bacon and eggs"

meals[:lunch] = "pasta"
p meals[:lunch]
# "pasta"

meals[:dinner] = "steak and salad"
p meals[:dinner]
# "steak and salad"

# My hash now looks like this:
p meals
# {
#   breakfast: "bacon and eggs",
#   lunch: "pasta",
#   dinner: "steak and salad"
# }

# meals[:snack] doesn't exist,
# so it will display the default value which we set on line 115

p meals[:snack]
# "Eat whatever you want!"



################################
# 5. SELECTING FROM HASH

students = {
  martyn: 99,
  ampora: 60,
  john: 70,
  roxanne: 12,
  solene: 55
}

# using .each

# create an empty hash called highgrades_with_each
highgrades_with_each = {}

students.each do |student, grade|
  if grade >= 60
    highgrades_with_each[student] = grade
  end
end

p highgrades_with_each
# {:martyn=>99, :ampora=>60, :john=>70}


# ### SAME AS: ###


# using .select
# selects the key-value pair where the condition evaluates to TRUE

highgrades_with_select = students.select do |student, grade|
  grade >= 60
end

p highgrades_with_select
# {:martyn=>99, :ampora=>60, :john=>70}



################################
# 6. ITERATING OVER ONLY KEYS OR ONLY VALUES

students = {
  martyn: 99,
  ampora: 60,
  john: 70,
  roxanne: 12,
  solene: 55
}


# each_key

students.each_key do |student|
  puts "hello #{student}"
end
# hello martyn
# hello ampora
# hello john
# hello roxanne
# hello solene

# each_value

all_grades = []

students.each_value do |grade|
  # all_grades.push(grade)
  all_grades << grade
end

p all_grades
# [99, 60, 70, 12, 55]



# If we wanted both keys and values we already know the drill, just use .each
# Example: add +2 to everyone's grade

students.each do |student, grade|
  students[student] = grade + 2
end

p students
# {:martyn=>101, :ampora=>62, :john=>72, :roxanne=>14, :solene=>57}



# Get a new key-value pair from user and add it to the hash:


# Ask the user for student's name
puts "What student would you like to add?"
print "> "
new_student = gets.chomp.downcase.to_sym

# Ask the user for student's grade
puts "What grade does he or she have?"
print "> "
new_grade = gets.chomp.to_i


# store it into the hash
students[new_student] = new_grade

p students
# should show the new student at the end of the hash.



# Convert strings in an array to symbols:


array_of_strings = ["HTML", "CSS", "JavaScript", "Ruby"]

symbols = []

array_of_strings.each do |string|
  # symbol = string.to_sym
  # symbols.push(symbol)
  symbols << string.to_sym
end

p symbols
# [:HTML, :CSS, :JavaScript, :Ruby]
