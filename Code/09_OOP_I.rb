#1. RUBY BUILT IN CLASSES

puts "John".class

puts 12.class

puts 12.5.class

puts [1,2,3,4].class

puts my_hash = {
  cat: "Garfield",
  dog: "Snoopy",
  bird: "Tweety"
}.class

puts true.class

puts false.class


#2. CREATING OUR OWN CLASSES

#online car stand

class Car
  def initialize(make, model)
    @make = make
    @model = model
  end
end

new_car = Car.new("Honda", "Civic")

puts new_car.inspect

puts new_car.class


#result:
# 1.class name
# 2.Ruby internal id code for this object
# 3.object's instance viariables + their respective values

new_car1 = Car.new("Toyota", "Corola")

puts new_car1.inspect

puts new_car.class


#3. CREATING OUR OWN METHODS FOR OUR CUSTOM CLASSES

class Person
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}!"
  end
end


zoe = Person.new("Zoe")

puts zoe.inspect

zoe.greeting

maria = Person.new("Maria")

maria.greeting

puts "-------"

class Cocktail
  def initialize(name, main_ingredient)
    @name = name
    @main_ingredient = main_ingredient
  end

  def intro
    puts "This recipe teches you to blend a #{@name}. Enjoy!"

  end

  def basics
    puts "A #{@name}'s main ingredient is #{@main_ingredient}."
  end
end


daikiri = Cocktail.new("Daikiri", "rum")

daikiri.intro

daikiri.basics

puts daikiri.class

puts "-------"


margarita = Cocktail.new("Margarita", "tequila")

margarita.intro

margarita.basics

puts margarita.class



#4. SCOPING

manufacturer = "LW Software House Ltd."

class User
  @@greeting = "Hello!"

  def initialize(username, password, age)
    @username = username
    @password = password
    @age = age
  end

  def current_user
    @username
  end

  def of_legal_age?
    @age >= 18 ? legal_age = true : legal_age = false
  end

  def self.greeting_user
    @@greeting
  end
#to access a class variable we need to create a method with .self + the class instance inside and then call that method on the class name

end

# Make a new User instance:
joe = User.new("Joe", 12345, 16)


# manufacturer is a GLOBAL VARIABLE: we can get it directly.
puts "Manufacturer: #{$manufacturer}"

# @username is an INSTANCE VARIABLE: we need to access it through a method called on the "joe" instance
puts "Current user: #{joe.current_user}"

# legal_age is a LOCAL VARIABLE: we need to access it through a method called on the "joe" instance
puts "Is this user of legal age? #{joe.of_legal_age?}"

# @@greeting is a CLASS VARIABLE: to access it, we need to create a method with .self + the class instance inside and then call that method on the class name
puts "#{User.greeting_user}"



#5. INHERITANCE

class Teacher
  def initialize(name, surname)
    @name = name
    @surname = surname
  end
end

class TA < Teacher
end

puts mariana = Teacher.new("Mariana", "Marcelino")

puts mariana.inspect


puts "-------"

puts maria = TA.new("Maria", "Castro")

puts maria.inspect



#6. OVERRIDING INHERITANCE

class Teacher
  def initialize(name, surname)
    @name = name
    @surname = surname
  end

  def greet
    puts "Hi!My name is #{@name}!"
  end
end

mariana = Teacher.new("Mariana", "Marcelino")

mariana.greet



class TA < Teacher

  def greet
    puts "Hi! My surname is #{@surname}!"
  end

end

lucas = TA.new("Lucas", "Padilha")

lucas.greet



#7. INHERITANCE WITH SUPER

class Teacher
  def initialize(name, surname)
    @name = name
    @surname = surname
  end

  def greet
    puts "Hi!My name is #{@name}!"
  end
end

mariana = Teacher.new("Mariana", "Marcelino")

mariana.greet


class TA < Teacher

  def greet
    puts "Hi! My surname is #{@surname}!"
  end

  def greet
    super
  end

end

lucas = TA.new("Lucas", "Padilha")

lucas.greet
