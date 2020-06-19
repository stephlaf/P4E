# 1. BUILT IN SORT  METHOD

my_array = ["Mary", "John", "Zack"]

puts my_array.sort

puts my_array.sort.reverse


# 2. BUILT-IN SORT METHOD BEHIND THE SCENES

my_array = ["Mary", "John", "Zack"]

puts "John" <=> "Zack"
puts "Mary" <=> "John"
puts "Mary" <=> "Zack"


# 3. EXAMPLE OF RUBY METHODS (FUNCTIONS!)

def greeting
  puts "Hello Ruby"
end

greeting



def my_method(x,y)
  puts x * y
end

my_method(2,6)




def greet(name)
  puts "Hello #{name}"
end

greet "Maria"
greet "Zoe"
greet "Lucas"



#4. RETURNING

def age(year_of_birth)
    2020 - year_of_birth
end

person_age = age(1992)

puts "This person's age is #{person_age}."



#5. SPLAT

def what_up(*friends)
  friends.each { |friend| puts "Hi, #{friend}!" }
end

what_up("Ian", "Zoe", "Zenas", "Eleanor")



#6. BLOCKS

numbers = [1,2,3,4,5,6]

numbers.each do |x|
  puts x * 2
end


#if we wanted to use a function instead


def double(x)
  puts x * 2
end

double(1)
double(2)
double(3)
double(4)
double(5)
double(6)


puts "---------"


def double(*numbers)
  numbers.each do |x|
    puts x * 2
  end
end

double(1,2,3,4,5,6)




