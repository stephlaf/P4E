###########
#  WHILE  #
###########

number = 1

while number < 11
  puts number
  number += 1  # (same as: number = number + 1)
end
# Returns 1 to 10



###########
#  UNTIL  #
###########

number = 1

until number == 11
  puts number
  number += 1
end
# Returns 1 to 10



##############################
#  BEWARE OF INFINITE LOOPS  #
##############################

number = 1

until number == 11
  puts number
end

# This will loop forever because the number will never equal 11
# Use Ctrl+C to interrupt in the terminal


#########
#  FOR  #
#########

# Returns 1 to 10
for num in 1..10   
  puts num
end

puts "====="

# Returns 1 to 9
for num in 1...10
  puts num
end

## NEXT ##

# Skips the even numbers
for number in 1..5
  next if number % 2 == 0
  puts number
end

# Skips number 3
for number in 1..5
  next if number == 3
  puts number
end



##########
#  LOOP  #
##########

loop { puts "Hello, World!" }

## Same as:

loop do
  puts "Hello World!"
end


number = 1

# Returns 1 to 5
loop do 
  break if number > 5
  puts number
  number += 1
end



########
# EACH #
########

array = [1, 2, 3, 4, 5, 6]

# Returns 1 to 6
array.each do | x |
  puts "This is my number!"
  puts x
  puts "Thanks!"
end


array = [2, 1, 5, 6, 3, 8]

# Returns 2, 1, 5, 6, 3, 8 in order it is written (does not sort)
array.each { |x| puts x }



###########
#  TIMES  #
###########

30.times do
  puts "Around The World"
end


counter = 1

# Returns 1 to 10
10.times do 
  puts counter
  counter += 1
end




###############################
########### EXAMPLES ##########
###############################


# I want to do the same thing using all of them:
# 1- "Testing ____"
# 2- "Testing ____"
# 3- "Testing ____"


## WHILE ##

counter = 1

while counter <= 3
  puts "#{counter}- Testing 'while'"
  counter += 1
end



## UNTIL ##
puts "======="

counter = 1

until counter == 4
  puts "#{counter}- Testing 'until'"
  counter += 1
end



## FOR ##
puts "======="

for num in 1..3
  puts "#{num}- Testing 'for'" 
end



## LOOP ##
puts "======="

counter = 1

loop do
  puts "#{counter}- Testing 'loop'"
  counter += 1
  break if counter == 4
end



## EACH ##
puts "======="

[1, 2, 3].each do |num|
  puts "#{num}- Testing '.each'"
end



## TIMES ##
puts "======="

counter = 1

3.times do
  puts "#{counter}- Testing '.times'"
  counter += 1
end




####################
#  OTHER EXAMPLES  #
####################

# If you had a blog and wanted to display all
# the posts a certain way on your home page: 

# posts.each do |post|
#   # Write the title, write the first paragraph
# end



# Login example:


logged_in = false

until logged_in

  puts "What is your username?"
  print "> " # 'Print' does not put a new line, so this will be on the same line as gets.chomp
  username = gets.chomp

  puts "What is your password?"
  print "> "
  password = gets.chomp

  if username == "Peter Pan" && password == "Tinkerbell"
    puts "You are logged in!"
    logged_in = true
  else
    puts "Wrong credentials"
  end

  puts "============" #This is to help you see when the loop starts over
end






# Nesting loops:


logged_in = false
correct_password = false

until logged_in
  puts "============" #This is to help you see when the loop starts over
  puts "What is your username?"
  print "> "
  username = gets.chomp

  if username == "Peter Pan"

    until correct_password
      puts "============" #This is to help you see when the loop starts over
      puts "What is #{username}'s password?"
      print "> "
      password = gets.chomp
      if password == "Tinkerbell"
        puts "You are logged in!"
        correct_password = true
        logged_in = true
      else
        puts "<!!!> Wrong password <!!!>"
      end
    end

  else
    puts "<!!!> Wrong username <!!!>"
  end
end