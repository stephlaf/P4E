# Arrays and Hashes - Module 4

# Using 'p' instead of 'puts'

puts "hello"     # <= This will not show the "" of the string
p "hello"        # <= This WILL show the "" of the string

# p is used for debugging. It is a shortcut for adding ".inspect"

puts "hello".inspect      # <=   same as using: p "hello"

# We will use 'p' to display arrays with brackets instead of puts which does not show brackets.

my_array = [1, 2, 3, 4]

p my_array
# [1, 2, 3, 4]

# 1. Creating an array

empty_array = []

names = ["Caroline", "Hopemarie", "All", "Sarah", "Gustavo"]
# index =>   0     ,      1     ,   2   ,    3  ,     4

# 2. Accessing or reading an element of an array -> with the index

puts names[0]
# Caroline

puts names[1]
# Hopemarie

# First or last element of an array

puts names.first
# Caroline

puts names.last
# Gustavo

# 3. Add an element to an array

# At the end

names.push("Saadia") # you can add more than one element
names << "Sakshi" # the 'shovel' way!
p names
# ["Caroline", "Hopemarie", "All", "Sarah", "Gustavo", "Saadia", "Sakshi"]

# At the beginning

names.unshift("Jenny")
p names
# ["Jenny", "Caroline", "Hopemarie", "All", "Sarah", "Gustavo", "Saadia", "Sakshi"]

# At a specific index

names.insert(2, "Wy")
p names
# ["Jenny", "Caroline", "Wy", "Hopemarie", "All", "Sarah", "Gustavo", "Saadia", "Sakshi"]

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

# 5. Update an element in the array

meals = ["Pizza", "Pasta", "Steak"]

meals[0] = "Salad"
p meals
# ["Salad", "Pasta", "Steak"]

# 6. Creating a hash

# For example: a restaurant menu to display the dishes + prices

restaurant_menu = {
  "Pizza" => 10,
  "Pasta" => 12,
  "Steak" => 18
}

p restaurant_menu
# {"Pizza"=>10, "Pasta"=>12, "Steak"=>18}

# A value can also be a collection of items! You could use an array in this case
# For example: "Pizza" => ["small", "medium", "large"]

# Creating an empty hash
restaurant_menu = Hash.new
# or
restaurant_menu = {}

# 7. Accessing or reading a value

restaurant_menu = {
  "Pizza" => 10,
  "Pasta" => 12,
  "Steak" => 18
}

puts restaurant_menu["Pizza"]
# 10

# 8. Adding a key-value pair to a hash

restaurant_menu["Fish"] = 15

p restaurant_menu
# {"Pizza"=>10, "Pasta"=>12, "Steak"=>18, "Fish"=>15}

# 9. Delete a key-value pair from a hash

restaurant_menu.delete("Pizza")

p restaurant_menu
# {"Pasta"=>12, "Steak"=>18, "Fish"=>15}

# 10. Update a value

restaurant_menu["Pizza"] = 11

p restaurant_menu
# {"Pizza"=>11, "Pasta"=>12, "Steak"=>18, "Fish"=>15}

# 11. Iterating over an array

pasta_recipe = ["Cream", "Shrimp", "Linguine"]

pasta_recipe.each do |ingredient|
  puts "One of the main ingredients for this recipe: #{ingredient}"
end
# One of the main ingredients for this recipe: Cream
# One of the main ingredients for this recipe: Shrimp
# One of the main ingredients for this recipe: Linguine

# 12. Iterating over a multi-dimensional array

recipes = [["Cream", "Shrimp", "Linguine"],["Apple", "Pear", "Cheese"]]

recipes.each do |recipe|
  recipe.each do |ingredient|
    puts "An ingredient for this recipe: #{ingredient}"
  end
end
# Try this one at home to see the result!

# 13. Iterating over an hash

restaurant_menu = {
  "Pizza" => 10,
  "Pasta" => 12,
  "Steak" => 18
}

restaurant_menu.each do |meal, price|
  puts "#{meal} price is $#{price}"
end

# Pizza price is $10
# Pasta price is $12
# Steak price is $18
