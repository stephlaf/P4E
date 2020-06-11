#PUTS & PRINT

print “My name is”

print “Mariana”



#DATA TYPES IN RUBY

"Mariana".class
20.class
20.5.class
True.class
False.class



#VARIABLES

number_1 = 1

number_2 = 2

puts number_1 + number_2



#MATH

1 +2

5 -1

10 * 2

20 / 2

2**3

25 % 7 = 4



#BUILT IN METHODS

name = "Joe"

puts name.length

puts name.reverse

puts name.upcase

puts name.downcase

puts name.capitalize


name = "John"

puts name.downcase

puts name	Vs.	name = "John"

puts name.downcase!

puts name



#COMMENTING OUT IN .RB DOCS

•	Single lines - #
  
•	Multiple lines 
  =begin
         code code code code
         code code code code
 =end



#STRING INTERPOLATION


name = "Joe"

age = "25"

puts "My name is #{name}, I am #{age} years old."



#GETS.CHOMP

puts "Please insert your name"

answer = gets.chomp

puts "My name is #{answer}."
