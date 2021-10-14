puts "
Welcome to Object Oriented Programming Part 1!
Define object:
Everything in Ruby is an object, for example strings, integers, arrays, hashes, booleans, etc. The elements, the data.
Methods and blocks are the behaviors, what we tell the objects to do. The logic. For example, Strings have their own methods, Arrays have their own methods, etc.
Object Oriented Programming helps people organize their programs by creating their own Objects with their own set of rules/methods/behaviors.
"

# 1. RUBY BUILT-IN CLASSES

puts "John".class
# => String

puts 12.class
# => Integer

puts 12.5.class
# => Float

puts [1,2,3,4].class
# => Array

my_hash = {
  cat: "Garfield",
  dog: "Snoopy",
  bird: "Tweety"
}

puts my_hash.class
# => Hash

puts true.class
# => TrueClass

puts false.class
# => FalseClass

# All of these are examples classes built into ruby.

# 2. CREATING OUR OWN CLASSES (OBJECT-ORIENTED PROGRAMMING!)

class Car
  def initialize(make, model)
    @make = make
    @model = model
  end
end

my_car = Car.new("Honda", "Civic")

p my_car
# => will display the instance of a Car

puts my_car.class
# Car

your_car = Car.new("Toyota", "Corola")

p your_car
# => will display a difference instance of a Car

puts your_car.class
# Car

# The initialize method is the method that runs when we create a new instance of a Class

# 3. CREATING OUR OWN METHODS FOR OUR CUSTOM CLASSES

class Person
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}!"
  end
end

zoe = Person.new("Zoe")

p zoe

zoe.greeting

maria = Person.new("Maria")

maria.greeting

class Cocktail
  def initialize(name, main_ingredient)
    @name = name
    @main_ingredient = main_ingredient
  end

  def intro
    puts "This recipe teaches you how to make a #{@name}. Enjoy!"
  end

  def basics
    puts "A #{@name}'s main ingredient is #{@main_ingredient}."
  end
end

margarita = Cocktail.new("Margarita", "tequila")

margarita.intro
# => "This recipe teaches you how to make a Margarita. Enjoy!"

margarita.basics
# => "A Margarita's main ingredient is tequila."

puts margarita.class
# Cocktail

bloody_caesar = Cocktail.new("Bloody Caesar", "Clamato")

bloody_caesar.intro

bloody_caesar.basics

puts bloody_caesar.class

# 4. SCOPING

variable = "This variable is global because it is assigned outside of a class or method"
# Global variable

class User
  @@greeting = "Hello!"
  # Class variable

  def initialize(username, password, age)
    @username = username
    @password = password
    @age = age
    # Instance variables^

    $global_variable = "assigned with $ if we want them to become global from inside a method or class"
    local_variable = "local variable, will only be accessed in the initialize method in this case."
  end

  def current_user
    @username
  end

  def of_legal_age?
    # @age >= 18 ? true : false
    @age >= 18   # <= same thing because this condition returns true or false anyway
  end

  def self.help_new
    "#{@@greeting} Make a new User with User.new(username, password, age)"
    #This is a class method (using .self) and @@greeting is a class variable
  end
end

# Call class method on the User class:

puts User.help_new
# => Hello! Make a new User with User.new(username, password, age)

# Make a new User instance:
joe = User.new("Joe", 12345, 16)

joe.current_user
# Joe

joe.of_legal_age?
# false

# 5. INHERITANCE

class Teacher
  def initialize(name, surname)
    @name = name
    @surname = surname
  end
end

class TA < Teacher
end

stef = Teacher.new("Stef", "L")

p stef

anne_marie = TA.new("Anne-Marie", "N")

p anne_marie

# 6. OVERRIDING INHERITANCE

class Teacher
  def initialize(name, surname)
    @name = name
    @surname = surname
  end

  def greet
    puts "Hi! My name is #{@name}!"
  end
end

stef = Teacher.new("Stef", "L")

stef.greet

class TA < Teacher

  def greet
    puts "Hi! I'm a TA and my name is #{@name}!"
  end
end

anne_marie = TA.new("Anne-Marie", "N")

anne_marie.greet

# 7. INHERITANCE WITH SUPER

class Teacher
  def initialize(name, surname)
    @name = name
    @surname = surname
  end

  def greet
    puts "Hi! My name is #{@name}!"
  end
end

stef = Teacher.new("Stef", "L")

stef.greet

class TA < Teacher
  def greet
    super
    puts "Also, I'm a TA!"
  end
end

anne_marie = TA.new("Anne-Marie", "N")

anne_marie.greet
