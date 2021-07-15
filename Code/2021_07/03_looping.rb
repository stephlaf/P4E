# Looping in Ruby

# 1. WHILE

number = 1

while number <= 10
  puts number
  number += 1  # (same as: number = number + 1)
end
# => displays 1 to 10

# 2. UNTIL

number = 1

until number > 10
  puts number
  number += 1
end
# => displays 1 to 10

##############################
#  !BEWARE OF INFINITE LOOPS!  #
##############################

number = 1

until number > 10
  puts number
end

# This will loop forever because the number will never equal 11
# Use Ctrl+C to interrupt in the terminal, otherwise your computer might crash

# 3. FOR

for num in 1..10
  puts num
end
# => displays 1 to 10

for num in 1...10
  puts num
end
# => displays 1 to 9

# NEXT used in FOR loop

for number in 1..10
  next if number % 2 == 0 # is the same as number.even?
  puts number
end
# => Skips the even numbers

for number in 1..5
  next if number == 3
  puts number
end
# => Skips number 3

# 4. LOOP

loop { puts "Hello, World!" }

# Is the same as:

loop do
  puts "Hello World!"
end

# But it will create an infinite loop without break!

number = 1

loop do
  puts number
  number += 1
  break if number > 10
end
# => displays 1 to 10

# 5. Iterator: EACH

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.each do | num |
  puts num
end
# => displays 1 to 10

# Block on one line
numbers = [2, 1, 5, 6, 3, 8]

numbers.each { |num| puts num }
# => displays 2, 1, 5, 6, 3, 8 in order it is stored in the array (does not sort)

# 6. Iterator: TIMES

30.times do
  puts "Around The World"
end
# => displays "Around The World" 30 times

number = 1

10.times do
  puts number
  number += 1
end
# => displays 1 to 10

###############################
########### EXAMPLES ##########
###############################


# I want to do the same thing using all of them:
# 1- "Testing ____"
# 2- "Testing ____"
# 3- "Testing ____"

## WHILE ##

number = 1

while number <= 3
  puts "#{number}- Testing 'while'"
  number += 1
end

## UNTIL ##
puts "======="

number = 1

until number > 3
  puts "#{number}- Testing 'until'"
  number += 1
end

## FOR ##
puts "======="

for number in 1..3
  puts "#{number}- Testing 'for'"
end

## LOOP ##
puts "======="

number = 1

loop do
  puts "#{number}- Testing 'loop'"
  number += 1
  break if number > 3
end

## EACH ##
puts "======="

[1, 2, 3].each do |number|
  puts "#{number}- Testing '.each'"
end

## TIMES ##
puts "======="

number = 1

3.times do
  puts "#{number}- Testing '.times'"
  number += 1
end

####################
#  OTHER EXAMPLES  #
####################

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

  puts "============" # This is to help you see when the loop starts over
end

# Nesting loops:

logged_in = false
correct_password = false

until logged_in
  puts "============" # This is to help you see when the loop starts over
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
