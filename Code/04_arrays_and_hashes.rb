puts "hello"     # <= This will not show the ""
p "hello"        # <= This WILL show the ""

# p is used for debugging. It is a shortcut for adding ".inspect"

puts "hello".inspect      # <=   same as using: p "hello"


# We will use p to display arrays with brackets instead of puts which does not show brackets.
my_array = [1, 2, 3]

p my_array
# [1, 2, 3, 4]




#1. ACCESSING AN ELEMENT FROM AN ARRAY

names = ["Jenny", "Peter", "Zoe", "Jessica"]
# index =>   0  ,   1    ,   2   ,    3

puts names[0]
# Jenny

puts names[1]
# Peter



# 2. ADDING AN ELEMENT TO AN ARRAY

#add a new post to my collection of posts


#At the end

my_array = [1, 2, 3]

my_array.push(4)

my_array << 4

p my_array
# [1, 2, 3, 4]

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


#by index

posts = ["post1", "post2", "post3"]

posts.insert(1, "new_post")

p posts
# ["post1", "new_post", "post2", "post3"]



# 3. DELETING AN ELEMENT FROM AN ARRAY

#deleting one of my posts

#end

posts = ["post1", "post2", "post3"]

posts.pop

p posts
# ["post1", "post2"]


#beginning

posts = ["post1", "post2", "post3"]

posts.shift

p posts
# ["post2", "post3"]


#by index

posts = ["post1", "post2", "post3"]

posts.delete_at(1)

p posts
# ["post1", "post3"]


#by value

posts = ["post1", "post2", "post3"]

posts.delete("post1")

p posts
# ["post2", "post3"]
# careful, this will delete EVERY element with the value "post1"



# 4. CREATING A HASH

#restaurant menu: display the dishes + prices

restaurant_menu = {
  "Pizza" => "10€",
  "Pasta" => "12€",
  "Steak" => "18€"
}

p restaurant_menu
# {"Pizza"=>"10€", "Pasta"=>"12€", "Steak"=>"18€"}


restaurant_menu = Hash.new
restaurant_menu["Fish"] = "15€"
restaurant_menu["Desert"] = "6€"

p restaurant_menu
# {"Fish"=>"15€", "Desert"=>"6€"}



# 5. ACCESSING A KEY-VALUE PAIR FROM A HASH


# online menu -> display the price for a specific dish

restaurant_menu = {
  "Pizza" => "10€",
  "Pasta" => "12€",
  "Steak" => "18€"
}

puts restaurant_menu["Pizza"]
# 10€


# 6. ADDING A KEY-VALUE PAIR TO A HASH

# add a new dish + price to the menu

restaurant_menu = {
  "Pizza" => "10€",
  "Pasta" => "12€",
  "Steak" => "18€"
}

restaurant_menu["Fish"] = "15€"

puts restaurant_menu
# {"Pizza"=>"10€", "Pasta"=>"12€", "Steak"=>"18€", "Fish"=>"15€"}



# 7. DELETING A KEY-VALUE PAIR FROM A HASH

# removing a dish + price from the menu

restaurant_menu = {
  "Pizza" => "10€",
  "Pasta" => "12€",
  "Steak" => "18€"
}

restaurant_menu.delete("Pizza")

puts restaurant_menu
# {"Pasta"=>"12€", "Steak"=>"18€"}


# 8. UPDATING A KEY-VALUE PAIR FROM A HASH

# updating the price of a dish

restaurant_menu = {
  "Pizza" => "10€",
  "Pasta" => "12€",
  "Steak" => "18€"
}

restaurant_menu["Pizza"] = "11€"

puts restaurant_menu
# {"Pizza"=>"11€", "Pasta"=>"12€", "Steak"=>"18€"}



# 9. ITERATING OVER AN ARRAY

#displaying the main ingredient for each of our recipes

recipes = ["Leek", "Carrot", "Shrimp"]

recipes.each do |ingredient|
  puts "Main ingredient for this recipe: #{ingredient}"
end


# 10. ITERATING OVER A MULTIDIMENSIONAL ARRAY

#displaying main ingredients for main dishes and for deserts

recipes = [["Leek", "Carrot", "Shrimp"],["Apple", "Pear", "Cheese"]]

recipes.each do |sub_array|
  sub_array.each do |ingredient|
    puts "An ingredient for this recipe: #{ingredient}"
  end
end

recipes.each do |sub_array|
  sub_array.each_with_index do |ingredient, index|
    puts "An ingredient for recipe of index: #{index} is: #{ingredient}"
  end
end


# 11. ITERATING OVER A HASH

# display the dishes + prices in a customized way

restaurant_menu = {
  "Pizza" => "10€",
  "Pasta" => "12€",
  "Steak" => "18€"
}

restaurant_menu.each do |meal, price|
  puts "#{meal} price is #{price}"
end

# Pizza price is 10€
# Pasta price is 12€
# Steak price is 18€