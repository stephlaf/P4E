# Arrays and Hashes


# Using 'p' instead of 'puts'

puts "hello"     # <= This will NOT show the "" of the string
p "hello"        # <= This WILL show the "" of the string

# p is used for debugging. It is a shortcut for adding ".inspect" method

puts "hello".inspect      # <=   same as using: p "hello"


my_array = [1, 2, 3]

puts my_array
# Will display:
# 1
# 2
# 3

p my_array
# Will display:
# [1, 2, 3]

puts my_array.inspect
# Same as p, Will display:
# [1, 2, 3]

# We will use 'p' to display arrays with brackets instead of puts which does not show brackets.



# ARRAYS:

# CRUD
# C = Create
# R = Read
# U = Update
# D = Delete


# 1. Creating an array

empty_array = []

names = ["Ryan", "Ines", "Mohamed", "Chris", "Olga"]
# index =>  0  ,   1   ,    2     ,    3   ,    4

# from end: -5 ,  -4   ,   -3     ,   -2   ,   -1



# 2. Read element from array

# With index:

puts names[0]
# Ryan

puts names[1]
# Ines

puts names[-2]
# Chris

# First or last element of an array:

puts names.first
# Ryan

puts names.last
# Olga



# 3. Update an arrray:

# Add an element to the end:

names.push("Zane")
# OR:
names << "Zane"
# This is a shortcut for .push, it's called the 'shovel' way!

p names
# ["Ryan", "Ines", "Mohamed", "Chris", "Olga", "Zane"]


# Add an element to the beginning

names.unshift("Jenny")

p names
# ["Jenny", "Ryan", "Ines", "Mohamed", "Chris", "Olga", "Zane"]


# Add an element to a specific index

names.insert(2, "Jerry")

p names
# ["Jenny", "Jerry", "Ryan", "Ines", "Mohamed", "Chris", "Olga", "Zane"]


# Change value of an element from the array

names = ["Jenny", "Jerry", "Ryan", "Ines", "Mohamed", "Chris", "Olga", "Zane"]
# Change "Ines" to "Solene":
# Use the index.
names[3] = "Solene"

p names 
# ["Jenny", "Jerry", "Ryan", "Solene", "Mohamed", "Chris", "Olga", "Zane"]



# 4. Delete an element from the array

meals = ["Pizza", "Pasta", "Steak"]

# The last element

meals.pop
p meals
# ["Pizza", "Pasta"]

# The first element

meals.shift
p meals
# ["Pasta", "Steak"]

# At a specific index

meals.delete_at(1)
p meals
# ["Pizza", "Steak"]

# A specific value

meals.delete("Pizza")
p meals
# ["Pasta", "Steak"]
# Careful! This will delete EVERY element with the value "Pizza"



# HASHES:


# 1. Creating a hash

# my_hash = {
#   "KEY" => "VALUE";
# }

# For example: a restaurant menu to display the dishes + prices

restaurant_menu = {
  "Pizza" => 10,
  "Pasta" => 12,
  "Steak" => 18
}

p restaurant_menu
# {"Pizza"=>10, "Pasta"=>12, "Steak"=>18}

# A value can also be an array of items!
# For example: "Pizza" => ["small", "medium", "large"]

# Creating an empty hash
restaurant_menu = Hash.new
# or
restaurant_menu = {}



# 2. Reading a value from the hash

restaurant_menu = {
  "Pizza" => 10,
  "Pasta" => 12,
  "Steak" => 18
}

puts restaurant_menu["Pizza"]
# 10



# 3. Updating the hash

# Add a new value called calzone:
restaurant_menu["Calzone"] = 16

p restaurant_menu
# {"Pizza"=>10, "Pasta"=>12, "Steak"=>18, "Calzone"=>16}

# Update calzone:

restaurant_menu["Calzone"] = 18

p restaurant_menu
# {"Pizza"=>10, "Pasta"=>12, "Steak"=>18, "Calzone"=>18}

# Update Pizza:

restaurant_menu["Pizza"] = 9

p restaurant_menu
# {"Pizza"=>9, "Pasta"=>12, "Steak"=>18, "Calzone"=>18}



# 4. Delete a key-value pair from a hash

restaurant_menu.delete("Calzone")

p restaurant_menu
# {"Pizza"=>9, "Pasta"=>12, "Steak"=>18}



# Iterating over arrays and hashes


# 1. Iterating over an array

pasta_recipe = ["Linguine", "Shrimp", "Sauce"]

pasta_recipe.each do |ingredient|
  puts "One of the main ingredients for this recipe: #{ingredient}"
end
# One of the main ingredients for this recipe: Linguine
# One of the main ingredients for this recipe: Shrimp
# One of the main ingredients for this recipe: Sauce



# 2. Iterating over a multi-dimensional array

recipes = [["Cream", "Shrimp", "Linguine"],["Apple", "Pear", "Cheese"]]

recipes.each do |recipe|
  recipe.each do |ingredient|
    puts "An ingredient for this recipe: #{ingredient}"
  end
end



# 3. Iterating over an hash

italian_resuarant = {
  "Pasta" => 12,
  "Pizza" => 10
  # KEY   =>  VALUE
}

# italian_resuarant.each do |KEY, VALUE|
#   # example:
#   # KEY = "Pasta"
#   # VALUE = 12
# end

italian_resuarant.each do |meal, price|
  puts "#{meal} price is $ #{price}"
end

# Pasta price is $ 12
# Pizza price is $ 10


# 4. Iterating over both!

italian_resuarant = {
  "Pasta" => ["Linguine", "Shrimp", "Sauce"],
  "Pizza" => ["Dough", "Cheese", "Tomato Sauce"]
  # KEY   =>  VALUE
}

italian_resuarant.each do |meal, recipe|
  recipe.each do |ingredient|
    puts "Adding #{ingredient} to #{meal}..."
  end
end
puts "Meal is complete!"

#  # meal  is the KEY => example: "Pasta"
#  # recipe  is the VALUE (an array) => example: ["Linguine", "Shrimp", "Sauce"]
#  # We call the .each method to the 'recipe' array
#  # Displays this:

# Adding Linguine to Pasta...
# Adding Shrimp to Pasta...
# Adding Sauce to Pasta...
# Adding Dough to Pizza...
# Adding Cheese to Pizza...
# Adding Tomato Sauce to Pizza...
# Meal is complete!


# 5. An array with hashes inside:

# Make a new array called restaurants
# Put the hash called italian_restaurant inside
# and create a new hash as the 2nd element: a place that serves sushi
# restaurants is an array with 2 elements (that are both hashes)

restaurants = [italian_resuarant, { "Sushi" => ["Rice", "Fish"] }]
# array.  index =       0       ,           1

# Looks like this: 

p restaurants
# [{"Pasta"=>["Linguine", "Shrimp", "Sauce"], "Pizza"=>["Dough", "Cheese", "Tomato Sauce"]}, {"Sushi"=>["Rice", "Fish"]}]


# I made it look cleaner here for you to see:
# 2 hashes inside 1 array. Inside the hash, there is a String as a KEY, and an array as a VALUE.

# [ 
#   {"Pasta"=>["Linguine", "Shrimp", "Sauce"],
#    "Pizza"=>["Dough", "Cheese", "Tomato Sauce"]
#   }, 
#   {"Sushi"=>["Rice", "Fish"]}
# ]
