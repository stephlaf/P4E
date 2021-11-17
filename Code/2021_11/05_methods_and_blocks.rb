# 1. Sort Method (Built-in to Ruby)

my_array = ["Mohamed", "Olga", "Ampora", "Kieran"]

sorted_array = my_array.sort
p sorted_array
# ["Ampora", "Kieran", "Mohamed", "Olga"]

reversed_sorted_array = my_array.sort.reverse
p reversed_sorted_array
# ["Olga", "Mohamed", "Kieran", "Ampora"]


puts "Original array:"
p my_array
# ["Mohamed", "Olga", "Ampora", "Kieran"]


# You can also use bang (!) on the sort and reverse methods
# to store the result back into the original array. For example:

array_of_integers = [3, 4, 2, 5, 1]
array_of_integers.sort!.reverse!

p array_of_integers
# Will display [5, 4, 3, 2, 1]



########################################################
# 2. Combined Comparison Operator (Spaceship Operator)

puts "Olga" <=> "Ampora"
#  1  because Olga is after Ampora alphabetically

puts "Ampora" <=> "Olga"
#  -1  because Ampora is before Olga alphabetically

puts "Olga" <=> "Olga"
#  0  because they are the same alphabetically

puts 4 <=> 5
#  -1  because 4 is before 5



########################################################
# 3. Build your own method

def greeting
  puts "Hello!"
end

# Call your method by calling its name:
greeting
# => "Hello!"


# method with 1 parameter:

def greet(name)
  puts "Hello #{name}!"
end

greet("Ihor")
greet("Chris")


# method with 2 parameters:

def multiply(num1, num2) # parameters
  puts num1 * num2
end

multiply(2, 3) # arguments
multiply(4, 6)



########################################################
# 4. RETURNING

def approx_age(year_of_birth)
  2020 - year_of_birth
end

person_age = approx_age(1997)
#            ^ Calling the method and assigning the returned value to a variable called person_age

puts "This person's age is #{person_age}."

# Ruby methods return the last line of code implicitly.
# (unless the method was returned before the last line using the 'return' keyword)

# So the method above is the same as:

# def age(year_of_birth)
#   return 2020 - year_of_birth
# end

def test_method
  return "The method will return this string here!"
  puts "This line of code will not run."
end

puts test_method
# displays "The method will return this string here!"


def approx_age(year_of_birth)
  age = 2021 - year_of_birth

  # if age.positive?
  #   age
  # else
  #   "unborn"
  # end

  age.positive? ? age : "unborn"
end

puts approx_age(1924)
# 97

puts approx_age(2022) 
# unborn



########################################################
#5. SPLAT

def list(*friends) # Splat (*) turns the friends parameter into an array
  p friends
end

list("Mohamed", "Nabhaan", "Kieran")

# Will display in terminal: ["Mohamed", "Nabhaan", "Kieran"]


def whats_up(*friends)
  friends.each do |friend|
    puts "What's up my friend #{friend}!"
  end
end

whats_up("Mohamed", "Nabhaan", "Kieran")
# "What's up my friend Mohamed!"
# "What's up my friend Nabhaan!"
# "What's up my friend Kieran!"


# Same as:

# def whats_up(*friends)
#   friends.each { |friend| puts "What's up my friend #{friend}!" }
# end



########################################################
#6. BLOCKS

numbers = [1, 2, 3, 4, 5, 6]

numbers.each do |x|
  puts x * 2
end

# the code between 'do' and 'end' is called a block.


# If we wanted to make a method instead:

def double(x)
  puts x * 2
end

double(1)
double(2)
double(3)
double(4)
double(5)
double(6)
# ^Calling the method 6 times with 1 argument.


# Or use both:

def double(*numbers)
  numbers.each do |x|
    puts x * 2
  end
end

double(1, 2, 3, 4, 5, 6, 7, 8, 9)
# ^Calling the method with as many arguments as I want


########################################################
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

names = ["Pascal Z", "Noemie F", "Anne A", "Sarah C"]

# Get the last letter of a string using index:
p "Pascal Z"[-1]
# => "Z"

sorted_last_letter = names.sort do |a, b|
  a[-1] <=> b[-1]
end
# ^ Compares the last letter of each string to sort them.

p sorted_last_letter
# ["Anne A", "Sarah C", "Noemie F", "Pascal Z"]
