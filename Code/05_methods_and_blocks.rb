#   1. Sort Method (Built-in to Ruby)   


my_array = ["Anne-Marie", "Pascal", "Noemie", "Anne", "Marc-Andre", "Sarah"]

sorted_array = my_array.sort
reversed_sorted_array = my_array.sort.reverse

puts "Original array:"
p my_array
# ["Anne-Marie", "Pascal", "Noemie", "Anne", "Marc-Andre", "Sarah"]

puts "Sorted array:"
p sorted_array
# ["Anne", "Anne-Marie", "Marc-Andre", "Noemie", "Pascal", "Sarah"]

puts "Sorted array reversed:"
p reversed_sorted_array
# ["Sarah", "Pascal", "Noemie", "Marc-Andre", "Anne-Marie", "Anne"]

# You can also use bang (!) on the sort and reverse methods
# to store the result back into the original array. For example:

array_of_integers = [3, 4, 2, 5, 1]
array_of_integers.sort!.reverse!

p array_of_integers 
# Will display [5, 4, 3, 2, 1]



########################################################
#   2. Combined Comparison Operator (Spaceship Operator)

my_array = ["Anne", "John", "Zack"]

puts "John" <=> "Zack"
# -1 because John is before Zack

puts "John" <=> "Anne"
# 1 because John is after Zack

puts "John" <=> "John"
# 0 because they are the same.



########################################################
# 3. Build your own method

def greeting
  puts "Hello!"
end

# Call your method by calling its name:
greeting



def my_method(x, y) # parameters
  puts x * y
end

my_method(2, 6) # arguments
# puts 12



def greet(name)
  puts "Hello #{name}"
end

greet "Anne Marie"
greet "Noemie"
greet "Sarah"



########################################################
#4. RETURNING

def age(year_of_birth)
    2020 - year_of_birth
end

person_age = age(1997)
#            ^ Calling the method

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

test_method
# Calling the method

what_is_returned = test_method # < calling the method again

puts what_is_returned  # =>  "The method will return this string here!"



########################################################
#5. SPLAT


def what_up(*friends) # Splat (*) turns the friends parameter into an array
  friends.each do |friend| 
    puts "What's up, #{friend}!" 
  end
end

what_up("Pascal", "Anne", "Marc-Andre")
# "What's up Pascal"
# "What's up Anne"
# "What's up Marc-Andre"


# Same as:

# def what_up(*friends)
#   friends.each { |friend| puts "What's up, #{friend}!" }
# end



########################################################
#6. BLOCKS

numbers = [1, 2, 3, 4, 5, 6]

numbers.each do |x|
  puts x * 2
end


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
# ^Calling the method 6 times


# Or use both:

def double(*numbers)
  numbers.each do |x|
    puts x * 2
  end
end

double(1, 2, 3, 4, 5, 6)
# ^Calling the method





########################################################
# 7. Using a block to customize the .sort method


names = ["Anne-Marie", "Pascal", "Noemie", "Anne", "Marc-Andre", "Sarah"]


names.sort do | a, b |
  a <=> b
end

# Same as:
names.sort
# Since .sort already sorts alphabetically by default.




names.sort do | a, b |
  b <=> a
end

# Same as:
names.sort.reverse
# ^ Easier to use this



# In one line:
names.sort { | a, b | b <=> a }
