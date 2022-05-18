#  Methods and Blocks!

# the .sort built-in method

names = ["Sohail", "Jasmine", "Ian", "Vladimir", "Cee Jay"]

 p names.sort

#  The above method call does not change permanently the value of the original array, but the code below it does

# This is because the method call includes a bang (!), making it a destructive method

p names.sort!.reverse!

p names

puts 3 <=> 6

puts 6 <=> 6

puts 6 <=> 5

# methods with no parameters

def greeting
  puts "Hello!"
end

# methods with one parameter

def greeting(name)
  puts "Hello, #{name}!"
end

# now when you call a method, the specific value you use for a parameter is called an argument.
# In this case, my argument is "Sarah" for the parameter of name

greeting("Sarah")

greeting("Kieran")

#  methods can have multiple parameters and arguments

def multiply(x, y, z)
  x * y * z
end

puts multiply(6, 7, 10)

# return keyword

# ruby methods automatically return the last line of the code within a body
# unless there is a specific 'return' keyword placed inside of your code

def multiply(x, y)
  return x * y
  # the return keyword above exits the method while passing along the value of x * y
  puts "This never gets run!"
end

num = multiply(6, 9)

puts num

# return keyword example

# sometimes we use the return keyword to stop a method in the middle of running it:

def numbers(number)
  if number == 6
    return number * number
  end
  # if the number you called the method on is 6, then the following code won't run
  puts "Oops, this number was bad"
end

num = numbers(6)

puts num

numbers(7)

# SPLAT: converts any number of arguments into a single array

def friends(*friends)
  friends.each do |friend|
    puts "what up #{friend}!"
  end
end

friends("Mark")

friends("Mark", "Cee Jay", "Sohail")

# I can call the above method and pass in any number of arguments too

# using a splat is the same as calling a method on an array:

friends = ["Sarah", "Kieran", "Sohail"]

def greeting(names)
  names.each do |friend|
    puts "what up #{friend}!"
  end
end

greeting(friends)

# BLOCKS: Some methods require a block to be fully functional, like the .each method for example:

def friends(*friends)
  friends.each { |name| puts "What up, #{name}" }
  puts "Done!"
end

#  ^ is the same as:

def friends(*friends)
  friends.each do |name|
    puts "What up, #{name}"
  end
  puts "Done!"
end

# blocks can be written using either the do and end keywords, or by using curly braces {}


#####################################
# MORE BLOCK EXAMPLES:
# The sort method actually takes a block too. Here's some examples of blocks in action

# 7. Using a block to customize the .sort method

names = ["Mohamed", "Olga", "Ampora", "Kieran", "Nabhaan"]


default_sort = names.sort do |a, b|
  a <=> b
end

p default_sort
# ["Ampora", "Kieran", "Mohamed", "Nabhaan", "Olga"]

# Same as:
names.sort
# Since .sort already sorts alphabetically by default.


reverse_sort = names.sort do |a, b|
  b <=> a
end

p reverse_sort
# ["Olga", "Nabhaan", "Mohamed", "Kieran", "Ampora"]

# Same as:
names.sort.reverse
# ^ Easier to use this

# In one line:
names.sort { |a, b| b <=> a }


# Sort by the last letter of the name

names = ["Anne Z", "Noemie F", "Pascal A", "Sarah C"]

# Get the last letter of a string using index:
p "Pascal A"[-1]
# => "A"

sorted_last_letter = names.sort do |a, b|
  a[-1] <=> b[-1]
end
# ^ Compares the last letter of each string to sort them.

p sorted_last_letter
# ["Pascal A", "Sarah C", "Noemie F", "Anne Z"]
