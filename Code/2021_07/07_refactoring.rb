# Refactoring - Module 7

#1. ONE LINE IF / UNLESS

goal = true

if goal == true
  puts "You scoreeeeed!"
end

# Better:

if goal
  puts "You scoreeeeed!"
end

# Even better:

puts "You scoreeeeed!" if goal

#2. Refactored unless

age = 17

unless age >= 18
    puts "You can't vote"
end

# Better:

puts "You can't vote" unless age >= 18

# 2. ONE LINE IF / ELSE STATEMENT TERNARY

goal = true

if goal
    puts "You scoooored!!!!"
else
    puts "You didn't score :("
end

# Better:

puts goal ? "You scored!" : "You didn't score"

# 3. CASE STATEMENT

puts "Programming language?"

print "> "
language = gets.chomp

# Using if and elsif:

if language == "ruby"
    puts "Web apps!"
elsif language == "css"
    puts "Front-end style!"
elsif language == "html"
    puts "Skeleton of a website!"
else
    puts "Sounds interesting"
end

# Using case:

case language
when "ruby"
    puts "Web apps!"
when "css"
    puts "Front-end style!"
when "html"
    puts "Skeleton of a website!"
else
    puts "Sounds interesting!"
end

# Even better:

case language
when "ruby" then puts "Web apps!"
when "css" then puts "Front-end style!"
when "html" then puts "Skeleton of a website!"
else puts "Sounds interesting!"
end

# 4. IMPLICIT RETURN

def sum(a, b)
  return a + b
end

puts sum(2, 3)

# Better:

def sum(a, b)
  a + b
end

# 5. CONDITIONAL ASSIGNMENT

teacher = nil
teacher = "Anne-Marie"
teacher ||= "Jeremy"

puts teacher
# => Anne-Marie

teacher = nil
teacher ||= "Jeremy"

puts teacher
# => Jeremy

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

#Using .upto - this will count up to 10:

1.upto(10) { |num| puts num }

#Using .downto - this will count down from 10:

10.downto(1) { |num| puts num }

#7. ONE LINE BLOCKS WITH { } INSTEAD OF do AND end

1.upto(10) do |num|
  puts num
end

1.upto(10) { |num| puts num }

#8. ADDING TO AN ARRAY WITH THE SHOVEL

my_array = [1, 2, 3]

my_array.push(4)

my_array << 5

p my_array
# => [1, 2, 3, 4, 5]

my_new_array = ["one", "two", "three"]

my_new_array.push("four")

my_new_array << "five"

p my_new_array
# => ["one", "two", "three", "four", "five"]
