#1. PUBLIC VS. PRIVATE METHODS

class Cake
  def initialize(name)
    @name = name
  end

  def in_the_oven
    puts "2. Cake going into the oven"
  end

  def mix_ingredients
    puts "1. Mixing cake ingredients"
  end
end

cake = Cake.new("Chocolate Cake")

cake.in_the_oven
cake.mix_ingredients


puts "---------"


class Cake
  def initialize(name)
      @name = name
  end

  def bake
    mix_ingredients
    in_the_oven
  end

  private

  def in_the_oven
      puts "2. Place cake in the oven"
  end

  def mix_ingredients
      puts "1. Mix cake ingredients"
  end
end

cake = Cake.new("Pie")
puts cake.bake





#2. ATTRIBUTE READER

class Teacher
  def initialize(name)
    @name = name
  end

  def teacher_name
    @name
  end
end

nawel = Teacher.new("Nawel")
puts nawel.teacher_name


puts "---------"

class Teacher

  attr_reader :name

  def initialize(name)
    @name = name
  end

end

nawel = Teacher.new("Nawel")
puts nawel.name





#3. ATTRIBUTE WRITER

class Teacher
  def initialize(name, age)
    @name = name
    @age = age
  end

  def teacher_name
    @name
  end

  def teacher_age=(value)
    @age = value
  end

end

teacher = Teacher.new("John", 25)
puts teacher.teacher_name

# puts teacher.name = "Mark" #doesn't work!

puts teacher.techer_age = 30

# puts teacher.age #doesn't work!


puts "---------"

class Teacher

  attr_reader :name
  attr_writer :age

  def initialize(name, age)
    @name = name
    @age = age
  end

end

teacher2 = Teacher.new("Zack", 30)
puts teacher.inspect

puts teacher2.name

puts teacher2.age = 35





#4. ATTRIBUTE ACCESSOR

class Teacher

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

end

teacher = Teacher.new("Zack", 30)
puts teacher.inspect

puts teacher.name
puts teacher.name = "Tom"

puts teacher.age
puts teacher.age = 45





# 5. BUILT-IN MODULES


require 'date'

puts Date.today

puts "-------"

puts "What's your year of birth?"

year_of_birth = gets.chomp.to_i

def calculate_age(year_of_birth)
  age = "Your age is #{Date.today.year - year_of_birth}."
end

puts calculate_age(year_of_birth)





#6. USING MODULES AT INSTANCE LEVEL

module Name
  def first_name(name)
    puts "My name is #{name}."
  end

  def last_name(surname)
    puts "My surnname is #{surname}."
  end
end

class Teacher
  include Name
end

class Student
  include Name
end

teacher = Teacher.new
teacher.first_name("Mariana")
teacher.last_name("Marcelino")

student = Student.new
student.first_name("John")
student.last_name("Doe")





#7. USING MODULES AT CLASS LEVEL

module ID
  def item_category(category)
    "Congrats! You've just created a new \"#{category}\" category!"
  end
end

class Cocktail
  extend ID
end

puts Cocktail.item_category("Cocktail")


class Cake
  extend ID
end

puts Cake.item_category("Cake")
