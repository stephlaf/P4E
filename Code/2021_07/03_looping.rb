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

# or

number = 0

until number > 10
  number = 1
  puts number
  number += 1
end

# This will loop forever because the number will NEVER be greater than 10!
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

# With an array:
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.each do |num|
  puts num
end
# => displays 1 to 10

# With a range:
(1..10).each do |num|
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

# Login example with UNTIL:

username = "Potato123"
password = "pineapple!"
logged_in = false

until logged_in # it will loop as long as 'logged_in' is false

  puts "What is your username?"
  print "> " # 'Print' does not put a new line, so this will be on the same line as gets.chomp
  username = gets.chomp

  puts "What is your password?"
  print "> "
  password = gets.chomp

  if username == entered_username && password == entered_password
    puts "You are logged in!"
    logged_in = true # this will break the loop by changing the value of logged_in!
  else
    puts "Wrong credentials"
  end

end

# Login example with LOOP:

username = "Potato123"
password = "pineapple!"

loop do # it will loop until we use the keyword 'break'
  puts "What is your username?"
  entered_username = gets.chomp

  puts "What is your password?"
  entered_password = gets.chomp

  if username == entered_username && password == entered_password
    puts "You are logged in!"
    break # it breaks the loop because now we're logged in
  else
    puts "You have the wrong credentials"
  end
end
