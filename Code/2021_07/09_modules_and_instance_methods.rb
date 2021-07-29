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

# Reading an attribute by defining a method

class Teacher
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

jeremy = Teacher.new("Jeremy")
puts jeremy.name

# Reading an attribute with attr_reader

class Teacher
  attr_reader :name

  def initialize(name)
    @name = name
  end

end

jeremy = Teacher.new("Jeremy")
puts jeremy.name

# attr_reader is a shortcut instead of having to define an entire method

# 3. ATTRIBUTE WRITER

# Modifying an attribute by defining a method

class Teacher
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def age=(value)
    @age = value
  end
end

teacher = Teacher.new("John", 25)

puts teacher.name
puts teacher.age

puts teacher.name = "Mark"
# => undefined method `name='

puts teacher.age = 30
puts teacher.age
# => 30

# Modifying an attribute by using attr_writer

class Teacher

  attr_reader :name, :age
  attr_writer :age, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

end

teacher2 = Teacher.new("Zack", 30)

teacher2.name = "Carla"

teacher2.age = 22

p teacher2

# 4. ATTRIBUTE ACCESSOR

# To both read and write an attribute, use attr_accessor

class Teacher

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

end

teacher = Teacher.new("Zack", 30)
p teacher

puts teacher.name = "Tom"
puts teacher.name

puts teacher.age = 45
puts teacher.age

# 5. BUILT-IN MODULES

require 'date'

puts Date.today

puts "What's your year of birth?"

year_of_birth = gets.chomp.to_i

def calculate_age(year_of_birth)
  puts "Your age is #{Date.today.year - year_of_birth}."
end

calculate_age(year_of_birth)

# 6. Creating our own modules

# Using module at instance level

module Cream
  def cream?
    true
  end
end

class Cookie
  include Cream
end

class Cake
  include Cream
end

cookie = Cookie.new
p cookie.cream?
# => true

cake = Cake.new
p cake.cream?
# => true

# Using module at class level

module ID
  def item_category(category)
    "Congrats! You've just created a new \"#{category}\" category!"
  end
end

class Cocktail
  extend ID
end

puts Cocktail.item_category("Cocktail")
# => "Congrats! You've just created a new "Cocktail" category!"


class Cake
  extend ID
end

puts Cake.item_category("Cake")
# => "Congrats! You've just created a new "Cake" category!"
