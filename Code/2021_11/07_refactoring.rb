# Refactoring - Module 7

#1. ONE LINE IF / UNLESS

goal = true

if goal == true
  puts "You scored!!!"
end

# Better:

if goal
  puts "You scored!!!"
end
# because conditional will evaluate to TRUE if it is not false or nil

# Even better:

puts "You scored!!!" if goal

#2. Refactored unless

age = 17

unless age < 18
    puts "You can vote!"
end

# Better:

puts "You can vote!" unless age < 18



# 2. ONE LINE IF / ELSE STATEMENT TERNARY

goal = true

if goal
    puts "You scored!!!"
else
    puts "Better luck next time!"
end

# TERNARY OPERATOR:
# puts goal ? "What happens if its true" : "What happens if its false"

puts goal ? "You scored!" : "Better luck next time!"


age = 16

puts age >= 18 ? "You can vote!" : "You cannot vote"

# same as:

# if age >= 18
#   puts "You can vote!"
# else
#   puts "You cannot vote"
# end



# 3. CASE STATEMENT

puts "Which language are you learning?"
print "> "
language = gets.chomp

# Using if and elsif:

if language == "Ruby"
  puts "Web apps"
elsif language == "CSS"
  puts "Front-end style"
elsif language == "HTML"
  puts "Skeleton of a website!"
else 
  puts "Sounds interesting! I hope you like your new language"
end

# Using case:

case language
when "Ruby"
  puts "Web apps"
when "CSS"
  puts "Front-end style"
when "HTML"
  puts "Skeleton of a website!"
else
  puts "Sounds interesting! I hope you like your new language"
end

# Even better:

case language
when "Ruby" then puts "Web apps"
when "CSS" then puts "Front-end style"
when "HTML" then puts "Skeleton of a website!"
else puts "Sounds interesting!"
end



# 4. IMPLICIT RETURN


# # RECAP ON METHODS

def method_name(parameter)
  return parameter
end

puts method_name("Argument")

# return does not have to be used if it is the last line of code executed.
# Example:

def sum(a, b)
  return a + b
end

puts sum(2, 3)

# Better:

def sum(a, b)
  a + b
end

# However, you can use return to end the method early if you want.


def multiply(num1, num2)
  # if num1 == 0 || num2 == 0
  #   return 0
  # end

  return 0 if num1.zero? || num2.zero?

  num1 * num2
end

puts multiply(2, 5) # this will run line 144

puts multiply(0, 5) # this will stop the method at line 142



# 5. CONDITIONAL ASSIGNMENT

# Use ||= to assign a value ONLY if it is nil

teacher = nil
teacher = "Solene"
teacher ||= "Roxanne" 
# ||= Does not re-assign value that exists

puts teacher
# => Solene

new_teacher = nil
new_teacher ||= "Roxanne"
# ||= Does assign new value here because it is nil

puts new_teacher
# => Roxanne

password = "unicorn"
password ||= "password"
puts password
# => "unicorn"

unassigned_variable ||= "default string if variable is nil"
puts unassigned_variable
# => "default string if variable is nil"



# 6. UPTO AND DOWNTO

# Using a range 1..10:

for num in 1..10
    puts num
end

# Using .upto - this will count up to 10:

1.upto(10) { |num| puts num }

# Using .downto - this will count down from 10:

10.downto(1) { |num| puts num }



# 7. ONE LINE BLOCKS WITH { } INSTEAD OF do AND end

1.upto(10) do |num|
  puts num
end

1.upto(10) { |num| puts num }


my_array = ["one", "two", "three"]

my_array.each do |number|
  puts number.capitalize
end

my_new_array = ["one", "two", "three"]

# reformat to {..} if the code between 'do' and 'end' is only 1 line
my_new_array.each { |number| puts number.capitalize }



# 8. ADDING TO AN ARRAY WITH THE SHOVEL

my_new_array = ["one", "two", "three"]

my_new_array.push("four")

my_new_array << "five"

p my_new_array
# => ["one", "two", "three", "four", "five"]



# 8. Refactor using built-in methods to make it easier to read:
my_integer = 4

puts my_integer == 0
puts my_integer.zero?

puts my_integer % 2 == 0
puts my_integer.even?

puts my_integer % 2 == 1
puts my_integer.odd?

puts my_integer > 0
puts my_integer.positive?

puts my_integer < 0
puts my_integer.negative?
