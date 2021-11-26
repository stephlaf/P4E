# 1. PUBLIC VS. PRIVATE METHODS

class Cake
  def initialize(name, cook_time)
    @name = name
    @cook_time = cook_time
  end

  def mix_ingredients
    puts "Mixing cake ingredients"
  end

  def in_the_oven
    puts "Cake going into the oven for #{@cook_time} minutes"
  end

end

cake = Cake.new("Chocolate Cake", 40)

cake.in_the_oven
cake.mix_ingredients

# I shouldn't have the choice to call these methods separately!
# Make them private and only accessible when calling the bake method:

class Cake
  def initialize(name, cook_time)
      @name = name
      @cook_time = cook_time
  end

  def bake
    mix_ingredients
    in_the_oven
  end

  private

  def mix_ingredients
    puts "Mixing cake ingredients"
  end

  def in_the_oven
    puts "Cake going into the oven for #{@cook_time} minutes"
  end
end

cake = Cake.new("Chocolate Cake", 40)

cake.in_the_oven
# => Error: "private method `in_the_oven' called"

cake.bake
# => "Mixing cake ingredients"
# => "Cake going into the oven for 40 minutes"



# 2. ATTRIBUTE READER

# Reading an attribute by defining a method:

class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

roxanne = Person.new("Roxanne")
puts roxanne.name


# Reading an attribute with attr_reader

class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

roxanne = Person.new("Roxanne")
puts roxanne.name

# attr_reader is a shortcut instead of having to define an entire method.
# If you do BOTH, the method will override the attr_reader



# 3. ATTRIBUTE WRITER

# Modifying an attribute by defining a method

class Person
  attr_reader :name, :hair_color

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end

  def hair_color=(new_color)
    @hair_color = new_color
  end
end

roxanne = Person.new("Roxanne", "Blonde")
puts roxanne.hair_color

# roxanne.hair_color=("Pink")
roxanne.hair_color = "Pink"
puts roxanne.hair_color


# Modifying an attribute by using attr_writer

class Person
  attr_reader :name, :hair_color
  attr_writer :hair_color

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end
end

roxanne = Person.new("Roxanne", "Blonde")
puts roxanne.hair_color

roxanne.hair_color = "Pink"
puts roxanne.hair_color



# 4. ATTRIBUTE ACCESSOR

# To both read and write an attribute, use attr_accessor

class Teacher
  attr_accessor :hair_color, :name

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end
end

roxanne = Teacher.new("Roxanne", "Blonde")

# Read:
puts roxanne.name
puts roxanne.hair_color

# Change value:
roxanne.hair_color = "Pink"
roxanne.name = "Roxanne2"

# Read:
puts roxanne.name
puts roxanne.hair_color



# 5. BUILT-IN MODULES

require 'date'

puts Date.today
puts Date.today.year

puts "What's your year of birth?"
print "> "
year_of_birth = gets.chomp.to_i

def estimate_age(year_of_birth)
  calculated_age = Date.today.year - year_of_birth
  puts "You age is #{calculated_age}"
end

estimate_age(year_of_birth)



# 6. Creating our own modules

# Using module at instance level

module Cream
  def cream?
    true
  end
end


class Cake
  include Cream
end

cake = Cake.new
p cake.cream?
# => true


class Cookie
  include Cream

  def initialize(name)
    @name = name
  end
end

choco = Cookie.new("Chocolate Chip")
puts choco.cream?
# => true



# Using module at class level

module Info
  def print_information
    "This is a class, please initialize it with .new"
  end

  def how_to_add_methods_to_class
    "You can define a method in this class by adding def inside the class"
  end

  def id(category)
    "Congrats, you just created a new #{category} category"
  end
end

class Furniture
  extend Info

  def initialize(name)
    @name = name
  end
end

puts Furniture.print_information
puts Furniture.how_to_add_methods_to_class

puts Furniture.id('Furniture')
# => "Congrats, you just created a new Furniture category"
