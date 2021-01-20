
################################
#1. HASHES RECAP

# C.R.U.D:

# C. Create
# R. Read
# U. Update
# D. Delete


# C. Create a hash:

meals = { 
  "breakfast" => "bacon and eggs",
  "lunch" => "chicken soup",
  "snack" => "chocolate cookies",
  "dinner" => "lasagna"
}
# or 
new_hash = Hash.new


# R. Read a hash

puts meals["breakfast"]


# U. Update an element from a hash

meals["breakfast"] = "Muesli"  


# D. Delete an element from a hash

meals.delete("snack")




################################
#2. CONVERT SYMBOL TO STRING

my_symbol = :breakfast

my_string = my_symbol.to_s

p my_string


my_string = "Hello"

my_symbol = my_string.to_sym

p my_symbol




################################
#3. SYMBOLS AS KEYS

#String as keys:
meals = { 
  "breakfast" => "bacon and eggs",
  "lunch" => "chicken soup",
  "snack" => "chocolate cookies",
  "dinner" => "lasagna"
}

puts breakfast_food = my_hash["breakfast"]

#Symbols as keys (old way):
meals = { 
  :breakfast => "bacon and eggs",
  :lunch => "chicken soup",
  :snack => "chocolate cookies",
  :dinner => "lasagna"
}

puts breakfast_food = my_hash[:breakfast]

# RUBY NEW SYNTAX:

#Symbols as keys (correct way):
meals = {
  breakfast: "Bacon and Eggs",
  lunch: "Chicken soup",
  snack: "Chocolate cookies",
  dinner: "lasagna"
}

puts breakfast_food = my_hash[:breakfast]




################################
#4. SETTING DEFAULT VALUES

my_hash = Hash.new("Eat whatever you want!")

my_hash[:meal1] = "Pizza"
my_hash[:meal2] = "Sushi"
my_hash[:meal3] = "Hot Dogs"

puts my_hash
# It will look like this:
# {
#   meal1: "Pizza",
#   meal2: "Sushi",
#   meal3: "Hot Dogs"
# }

puts my_hash[:meal1]  # "Pizza"
puts my_hash[:meal2]  # "Sushi"
puts my_hash[:meal3]  # "Hot Dogs"

puts my_hash[:meal4]  # "Eat whatever you want!"
puts my_hash[:mealX]  # "Eat whatever you want!"
puts my_hash[:asdfghj]  # "Eat whatever you want!"




################################
#5. SELECTING FROM HASH

grades = { 
  jessica: 98,
  peter: 30,
  john: 99,
  sarah: 86
}

high_grades = grades.select do |student, grade|
  grade > 90
end




################################
#6. ITERATING OVER ONLY KEYS OR ONLY VALUES


my_hash = {
  one: 1,
  two: 2,
  three: 3 
}


# one two three

my_hash.each_key { |k| puts k }

# my_hash.each_key do | k |
#   puts k
# end


# 1 2 3

my_hash.each_value { |v| puts v }

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

grades.each_value do |grade|
  puts grade
end



#If we wanted both keys and values we already know the drill:


grades.each do |student, grade|
  puts "#{student} grade is: #{grade}"
end





####### 
# Other examples from questions:


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

# the variable 'student' represents a key, which is a symbol.
# so this is like doing grades[:jessica], grades[:sarah], etc.