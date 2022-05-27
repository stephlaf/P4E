# Object Oriented Programming #2!


# 1. PUBLIC VS. PRIVATE METHODS

class Cake
  def initialize(name, cook_time)
    @name = name
    @cook_time = cook_time
  end

  def mixing_ing
    puts "Put the ingredients together before baking."
  end

  def oven
    puts "bake the #{@name} for #{@cook_time} minutes."
  end
end


cake = Cake.new("Victorian Sponge", 40)

cake.oven
cake.mixing_ing

# I shouldn't have the choice to call these methods separately!
# Make them private and only accessible when calling the bake method:


class Cake
  def initialize(name, cook_time)
    @name = name
    @cook_time = cook_time
  end


  def baking
    mixing_ing
    oven
    puts "All done! Enjoy your cake. :)"
  end

  private

  def mixing_ing
    puts "Put the ingredients together before baking."
  end

  def oven
    puts "bake the #{@name} for #{@cook_time} minutes."
  end
end


cake = Cake.new("Victorian Sponge", 40)

cake.oven
# => Error: "private method `in_the_oven' called"

cake.baking
# => Put the ingredients together before baking.
#  => bake the Victorian Sponge for 40 minutes.

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

pauline = Person.new("Pauline")

puts pauline.name


# Reading an attribute with attr_reader

class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

end

pauline = Person.new("Pauline")

puts pauline.name

# 3. ATTRIBUTE WRITER

# Modifying an attribute by defining a method

class Person
  attr_reader :name, :hair_colour

  def initialize(name, hair_colour)
    @name = name
    @hair_colour = hair_colour
  end

  def hair_colour=(new_hair_colour)
    @hair_colour = new_hair_colour
  end

end

cee_jay = Person.new("Cee Jay", "Green")

puts cee_jay.hair_colour

cee_jay.hair_colour = "Blue"

puts cee_jay.hair_colour

# Modifying an attribute by using attr_writer

class Person
  attr_reader :name, :hair_colour
  attr_writer :hair_colour

  def initialize(name, hair_colour)
    @name = name
    @hair_colour = hair_colour
  end
end

cee_jay = Person.new("Cee Jay", "Green")

puts cee_jay.hair_colour

cee_jay.hair_colour = "Blue"

puts cee_jay.hair_colour

# 4. ATTRIBUTE ACCESSOR

# To both read and write an attribute, use attr_accessor

class Person
  attr_accessor :hair_colour
  attr_reader :name

  def initialize(name, hair_colour)
    @name = name
    @hair_colour = hair_colour
  end
end

emanuel = Person.new("Emanuel", "Pink")

puts emanuel.name

emanuel.hair_colour = "Black"

puts emanuel.hair_colour


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

puts cake.cream?
# => true

class Cookie
  include Cream

  def initialize(name)
    @name = name
  end
end

cookie = Cookie.new("choco chip")

p cookie.cream?
# => true

# Using module at class level

module Info
  def information
    puts "This is a class! Initialize it by using .new!"
  end
  def how_to_add_method
    puts "create a method using the def keyword!"
  end
end


class Furniture
  extend Info

  def initialize(name)
    @name = name
  end

end

Furniture.information
# "This is a class! Initialize it by using .new!"

Furniture.how_to_add_method
# "create a method using the def keyword!"












#
