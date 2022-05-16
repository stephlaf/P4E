# Hashes and Arrays!

puts my_array

# inspect lets us see everything about a piece of data, and is very useful for seeing arrays, hashes and advanced data types.

p my_array

# ^^^^ Is the same as below:

puts my_array.inspect


# CRUD Actions

# Create
my_empty_array = []

my_array = ["Sarah", "Isabella", "Cee Jay", "Vladimir"]

# Read

# remember, an index of a value in an array starts at 0 and goes up
array_index = [0, 1, 2, 3]
# you can also access values using a negative index value, like so:
array_reverse_index = [-4, -3, -2, -1]

puts my_array.first

puts my_array.last

# Update

my_array.push("P Z")

my_array.unshift("Lateef")

my_array.insert(3, "Kieran")

p my_array

# Delete

my_array.pop

my_array.shift

my_array.delete_at(1)

my_array.delete("Kieran")


# Update

#  changes value at index 1
my_array[1] = "Ashley"


#  Create

my_hash = {}

my_hash = Hash.new

pets = {
  "Marina" => "Leo",
  "Sarah" => "Ruby",
  "Cee Jay" => "Diamond"
}

#  Read

# finds value of the key "Sarah"
puts pets["Sarah"]

# Update

#  adds a new value to array
pets["Morenike"] = "Blue"
# changes the same value
pets["Morenike"] = "Red"

# Delete

pets.delete("Marina")


#  Iterating over arrays!

my_array = [["Sarah", "Isabella"], ["Cee Jay", "Vladimir"]]

my_array.each do |name|
  name.upcase!
end

# multidimensional array loops!

my_array = [["Sarah", "Isabella"], ["Cee Jay", "Vladimir"]]

# need to access EACH value of EACH array!
my_array.each do |names|
  names.each do |name|
    name.upcase!
  end
end


#  iterating over hashes!

restaurants = {
  "Pichai" => "It's Thai and amazing!",
  "Pamika" => ["Also Thai and also amazing!"],
  "Labbatoir" => ["French contemp food!"]}

restaurants.each do |restaurant, description|
  puts "The best restaurant in town is called #{restaurant}, #{description}"
end

# using an each loop inside of an each loop to access information!

restaurants = {
  "Thai" => ["Pichai", "It's Thai and amazing!", "It's cheap too!"],
}

# puts our information to the terminal!

restaurants.each do |key, information|
  information.each do |info|
    puts info
  end
end
