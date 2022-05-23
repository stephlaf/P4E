# 07 Refactoring

# one line IF/UNLESS

goal = true

# regular if statement

if goal
  puts "you scored a goal!!!!!!!!"
end

# refactored if statement: (do this thing IF this thing is true)

puts "you scored a goal!!!!!!!!" if goal


# unless works the same way
puts "you're not old enough to vote!" unless age >= 18

# TERNARY OPERATOR

puts "What's your age?"

age = gets.chomp.to_i

if age >= 18
  puts "you can vote!"
else
  puts "you can't vote!"
end

# you can rewrite an if/else atatement as a ternary operator using ? and :

# This ternary operator works exactly the same as the above if/else statement

puts age >= 18 ? "you can vote!" : "you can't vote!"

# ternary operators are super clean and turn 5 line operations into a single line!

# This is how the ternary operator works in plain language:

# is this true ? run this code if true : run this code if false


#  CASE STATEMENT

puts "What language are you learning?"

language = gets.chomp

# if/else statements that require a lot of options are long and tedious to write.
if language == "Ruby"
  puts "great language to learn! Kieran is such a great teacher!!!"
elsif language == "HTML"
  puts "OOOOOO webpages!!!"
elsif language == "python"
  puts "OOOOOO, science!!!"
elsif language == "JavaScript"
  puts "my mom knows that one!!"
else
  puts "ooooh that seems fun!!!"
end

# case statements make long if/else statements much easier to write

case language
when "Ruby"
  puts "great language to learn!"
when "HTML"
  puts "OOOOOO webpages!!!"
when "python"
  puts "OOOOOO, science!!!"
when "JavaScript"
  puts "my mom knows that one!!"
else
  puts "ooooh that seems fun!!!"
end


# fully refactord case statement using when and then

case language
when "Ruby" then puts "great language to learn!"
when "HTML" then puts "OOOOOO webpages!!!"
when "python" then puts "OOOOOO, science!!!"
when "JavaScript" then puts "my mom knows that one!!"
else
  puts "ooooh that seems fun!!!"
end

#  conditional assignment operator:

teacher = "Sarah"

# this operator will set a default value

teacher ||= "Benoit"

teacher = nil

# since teacher is currently nil, teacher will be re-assigned to "Cee Jay"
teacher ||= "Cee Jay"

# ^ is the same as below:

teacher = "CeeJay" if teacher.nil?

puts teacher
# Cee Jay

# upto and downto allows you to iterate over a pre-made range of values

for num in 1..10
  print num, " "
end

5.upto(17) { |num| print num, " " }

10.downto(1) { |num| print "#{num} " }

# single line blocks:

names = ["Kieran", "Sarah", "Camille", "Michael"]

# this is a multi-line block

names.each do |name|
  puts name.upcase
end

# one-line blocks: using {} you can refactor a one line block like so:

names.each { |name| puts name.upcase }

# the 'shovel' adds a value to the end of a given array
# It works the same way as .push

names.push("Cee Jay")

names << "Benoit"

p names
