# Object Oriented Programming 1

puts "
Welcome to Object Oriented Programming Part 1!
Define object:
Everything in Ruby is an object, for example strings, integers, arrays, hashes, booleans, etc. The elements, the data.
Methods and blocks are the behaviors, what we tell the objects to do. The logic. For example, Strings have their own methods, Arrays have their own methods, etc.
Object Oriented Programming helps people organize their programs by creating their own Objects with their own set of rules/methods/behaviors.
"
# Ruby built-in classes

puts "Cee Jay".class
# => String

puts 6.class
# => Integer

puts 6.4.class
# => Float

puts true.class
# => TrueClass

puts false.class
# => FalseClass

puts [].class
# => Array

puts nil.class
# => Nilclass

# All of these are examples classes built into ruby.

# 2. CREATING OUR OWN CLASSES (OBJECT-ORIENTED PROGRAMMING!)

class Car
  def initialize(make, model) # Car.new("make", "model")
    @make = make
    @model = model
  end
end

kieran_car = Car.new("Bike", "Wheels")
# The initialize method is the method that runs when we create a new instance of a Class

p kieran_car
# => will display the instance of a Car

emanuel_car = Car.new("Pile", "Rubble")

p emanuel_car

# Creating a new method for Dog class

class Dog
  def initialize(name, breed, colour)
    @name = name
    @breed = breed
    @colour = colour
  end

  def speak
    puts "bark"
  end
end

george = Dog.new("George", "Schnauzer", "brown")

p george

george.speak

puts george.class
# => Dog class

# 3. CREATING OUR OWN METHODS FOR OUR CUSTOM CLASSES

class Person
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}!"
  end
end


kieran = Person.new("Kieran")
p kieran
kieran.greeting
# "Hi, my name is Kieran!

class Cocktail
  def initialize(name, main_ingredient)
    @name = name
    @main_ingredient = main_ingredient
  end

  def intro
    puts "The cocktail we are making today is called a #{@name}!"
  end

  def basics
    puts "The main ingredient in our cocktail is #{@main_ingredient}. Enjoy!"
  end
end

mimosa = Cocktail.new("Mimosa", "champagne")

mimosa.intro
# "The cocktail we are making today is called a mimosa!

mimosa.basics
# The main ingredient in our cocktail is champagne. Enjoy!

#  SCOPE

# global variable
hi = "hello"

# This method is global because it is defined outside of any class/module, and can be used within class if needed
def greeting
  puts "hello"
end

greeting


class Dog
  @@dog_counter = 0

  def initialize(name)
    @name = name
    @@dog_counter += 1
    $global_variable = "Assigned with a $ sign, can be used EVERYWHERE!"
  end

  def dog_counter
    puts "the dog counter is at #{@@dog_counter}"
  end
end

Dog.new("george")

benoit = Dog.new("Benoit")

 benoit.dog_counter
#  The dog counter is at 2, because we've added two dogs in our program

puts $global_variable

#  Inheritance

class Teacher
  def initialize(name)
    @name = name
  end

  def greeting
    puts "hello, my name is #{@name}!"
  end
end


kieran = Teacher.new("Kieran")

kieran.greeting

# the TA class does inherit from the Teacher class, but it can redefine and make its own rules as well and methods as well.

class TA < Teacher

  def greeting
    super #super will execute the method of the same name in Teacher class, and then execute the code in the method here
    puts "And I'm a TA!"
  end
end

benoit = TA.new("Benoit")

benoit.greeting
