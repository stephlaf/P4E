# Using 'p' instead of 'puts'

puts "hello"     # <= This will not show the "" fo the string
p "hello"        # <= This WILL show the "" of the string

# p is used for debugging. It is a shortcut for adding ".inspect"

puts "hello".inspect      # <=   same as using: p "hello"

# We will use p to display arrays with brackets instead of puts which does not show brackets.
my_array = [1, 2, 3]

p my_array
# [1, 2, 3, 4]

# 1. Creating an array

empty_array = []

names = ["Jenny", "Peter", "Zoe", "Jessica"]
# index =>   0  ,   1    ,   2   ,    3

# 2. Accessing or reading an element of an array -> with the index

puts names[0]
# Jenny

puts names[1]
# Peter

# 3. Add an element to an array

my_array = [1, 2, 3]

# At the end

my_array.push(4)

my_array << 5

p my_array
# [1, 2, 3, 4, 5]

names = ["Sarah", "Zoe"]

names << "Kayleigh"

names.push("Joey")

p names
# ["Sarah", "Zoe", "Kayleigh", "Joey"]

#At the beginning

my_array = [1, 2, 3]

my_array.unshift(0)

p my_array
# [0, 1, 2, 3]

names = ["Sarah", "Zoe"]

names.unshift("Kayleigh")

p names
# ["Kayleigh", "Sarah", "Zoe"]

# At a specific index

posts = ["post1", "post2", "post3"]

posts.insert(1, "new_post")

p posts
# ["post1", "new_post", "post2", "post3"]

# 4. Delete an element from the array

# The last element

posts = ["post1", "post2", "post3"]

posts.pop

p posts
# ["post1", "post2"]

# The first element

posts = ["post1", "post2", "post3"]

posts.shift

p posts
# ["post2", "post3"]

# At a specific index

posts = ["post1", "post2", "post3"]

posts.delete_at(1)

p posts
# ["post1", "post3"]

# A specific value

posts = ["post1", "post2", "post3"]

posts.delete("post1")

p posts
# ["post2", "post3"]
# Careful! This will delete EVERY element with the value "post1"

# 5. Creating a hash

# For example: a restaurant menu to display the dishes + prices

restaurant_menu = {
  "Pizza" => "$10",
  "Pasta" => "$12",
  "Steak" => "$18"
}

p restaurant_menu
# {"Pizza"=>"$10", "Pasta"=>"$12", "Steak"=>"$18"}

# Creating an empty hash
restaurant_menu = Hash.new
# or
restaurant_menu = {}

# 6. Accessing or reading a value

restaurant_menu = {
  "Pizza" => "$10",
  "Pasta" => "$12",
  "Steak" => "$18"
}

puts restaurant_menu["Pizza"]
# $10

# 7. Adding a key-value pair to a hash

restaurant_menu = {
  "Pizza" => "$10",
  "Pasta" => "$12",
  "Steak" => "$18"
}

restaurant_menu["Fish"] = "$15"

puts restaurant_menu
# {"Pizza"=>"$10", "Pasta"=>"$12", "Steak"=>"$18", "Fish"=>"$15"}

# 8. Delete a key-value pair from a hash

restaurant_menu = {
  "Pizza" => "$10",
  "Pasta" => "$12",
  "Steak" => "$18"
}

restaurant_menu.delete("Pizza")

puts restaurant_menu
# {"Pasta"=>"$12", "Steak"=>"$18"}

# 9. Update a value

restaurant_menu = {
  "Pizza" => "$10",
  "Pasta" => "$12",
  "Steak" => "$18"
}

restaurant_menu["Pizza"] = "$11"

puts restaurant_menu
# {"Pizza"=>"$11", "Pasta"=>"$12", "Steak"=>"$18"}

# 10. Iterating over an array

pasta_recipe = ["Leek", "Shrimp", "Linguine"]

pasta_recipe.each do |ingredient|
  puts "One of the main ingredient for this recipe: #{ingredient}"
end

# 11. Iterating over a multi-dimensional array

recipes = [["Leek", "Shrimp", "Linguine"],["Apple", "Pear", "Cheese"]]

recipes.each do |recipe|
  recipe.each do |ingredient|
    puts "An ingredient for this recipe: #{ingredient}"
  end
end

# 12. Iterating over an hash

restaurant_menu = {
  "Pizza" => "$10",
  "Pasta" => "$12",
  "Steak" => "$18"
}

restaurant_menu.each do |meal, price|
  puts "#{meal} price is #{price}"
end

# Pizza price is $10
# Pasta price is $12
# Steak price is $18
