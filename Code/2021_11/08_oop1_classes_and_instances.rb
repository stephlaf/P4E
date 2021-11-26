puts "
Welcome to Object Oriented Programming Part 1!
Define object:
Everything in Ruby is an object, for example strings, integers, arrays, hashes, booleans, etc. The elements, the data.
Methods and blocks are the behaviors, what we tell the objects to do. The logic. For example, Strings have their own methods, Arrays have their own methods, etc.
Object Oriented Programming helps people organize their programs by creating their own Objects with their own set of rules/methods/behaviors.
"

# 1. RUBY BUILT-IN CLASSES

puts "Hello World".class
# => String

puts 12.class
# => Integer

puts 12.5.class
# => Float

puts [1,2,3,4].class
# => Array

myhash = {
  key: "value",
  dog: "santi"
}
p myhash.class
# => Hash

puts true.class
# => TrueClass

puts false.class
# => FalseClass

# All of these are examples classes built into ruby.



# 2. CREATING OUR OWN CLASSES (OBJECT-ORIENTED PROGRAMMING!)

class Car
  def initialize(make, model) # Car.new("make", "model")
    @make = make
    @model = model
  end
end

my_car = Car.new("Honda", "Civic")
# The initialize method is the method that runs when we create a new instance of a Class

p my_car
# => will display the instance of a Car




class Dog
  def initialize(name, breed, age, color)
    @name = name
    @breed = breed
    @age = age
    @color = color
  end

  def speak
    puts "Woof woof!"
  end
end

santi = Dog.new("Santi", "Mixed", 5, "White and Brown")

santi.speak

p santi
puts santi.inspect
# => it is an instance of the Dog class



# 3. CREATING OUR OWN METHODS FOR OUR CUSTOM CLASSES

class Person
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}!"
  end
end

rox = Person.new("Roxanne")
rox.greeting
# "Hi, my name is Roxanne!

kei = Person.new("Keiran")
kei.greeting
# "Hi, my name is Keiran!


class Cocktail
  def initialize(name, main_ingredient)
    @name = name
    @ingredient = main_ingredient
  end

  def intro
    puts "This recipe teaches you how to make a #{@name}"
  end

  def basics
    "A #{@name}'s main ingredient is #{@ingredient}"
  end
end

molotov = Cocktail.new('Molotov', 'Vodka')
p molotov
puts molotov.intro
puts molotov.basics

margarita = Cocktail.new('Margarita', 'Tequila')
p margarita
puts margarita.intro
puts margarita.basics



# # SCOPE

variable = "This variable is global because it is assigned outside of a class or method"

# This method is global because it is defined outside of any class/module, and can be used within class if needed
def count_to_ten
  1.upto(10) { |num| puts num }
end

class User
  @@greeting = "Hello!"

  def initialize(username, password, age)
    @username = username
    @password = password
    @age = age
    # ^ These are instance variables

    $global_variable = "Assigned with a $ sign, can be used EVERYWHERE!"
    local_variable = "local, will only be accessed in this specific 'initialize' method"
  end

  def current_user
    @username
  end

  def greeting
    count_to_ten
    @@greeting
  end
end

kevin = User.new('kevin123', 'kevin123!pass', 300)
p kevin.greeting



# 5. INHERITANCE

class Teacher
  def initialize(name)
    @name = name
  end
end

class TA < Teacher
end
# Inherits all the methods from Teacher, including Initialize

solene = Teacher.new("Solene")
p solene

roxanne = TA.new("Roxanne")
p roxanne



# 6. OVERRIDING INHERITANCE

class Teacher
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hi! My name is #{@name}!"
  end
end

solene = Teacher.new("Solene")
stef.greet


class TA < Teacher

  def greet
    puts "Hi! I'm a TA and my name is #{@name}!"
  end
end

roxanne = TA.new("Roxanne")
roxanne.greet
# greet method is defined twice, but the TA (sub-class) will overwrite the Teacher (parent class) method.



# 7. INHERITANCE WITH SUPER

class Teacher
  def initialize(name, surname)
    @name = name
  end

  def greet
    puts "Hi! My name is #{@name}!"
  end
end

solene = Teacher.new("Solene")
solene.greet
# "Hi! My name is Solene!"


class TA < Teacher

  def greet
    super
    puts "Also, I'm a TA!"
  end
end

roxanne = TA.new("Roxanne")
roxanne.greet
# "Hi! My name is Roxanne!"
# "Also, I'm a TA"
