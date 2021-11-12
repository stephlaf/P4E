# Looping in Ruby


# 1. WHILE

# while #CONDITION
#     # code that will loop over and over while the condition is true
# end

number = 1

while number <= 10
  puts "The number is less than or equal to 10"
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

boolean = true
while boolean
  puts "this is an infinite loop because boolean => true"
  # infinite, unless I reassign the variable called 'boolean' to false
end

number = 1
until number > 10
  puts "this is an infinite loop because 1 is not more than 10"
end
# This will loop forever because the number will NEVER be greater than 10!
# Use Ctrl+C to interrupt infinite loops in the terminal

# to prevent infinite loop, change the variable of number:
number = 1
until number > 10
  puts number
  number += 1
end



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


for number in 1..5
  print number
  puts "before the 'next'"

  next if number % 2 == 0

  print number
  puts "after the 'next'"
  #
end
# only the odd numbers will show 'after the next'
# all the numbers will show 'before the next'



# 4. LOOP

loop do
  puts "Hello World!"
end
# (infinite loop)

# Is the same as:
loop { puts "Hello, World!" }


# But it will create an infinite loop without break!

number = 1

loop do
  puts number
  number += 1
  break if number > 10
end
# => displays 1 to 10


loop do
  puts "This will only be 'puts' once"
  break
end
# will only loop once because it will break on the first loop



# 5. Iterator: EACH

# Arrays can contain anything inside, ie: [1, 3.3, 98, 0, "strings", [1, 2, 3, "array inside array"]]

# EACH with an array:
numbers = [1, 2, 3, 4, 5, 6]

numbers.each do |num|
  puts num
end
# => displays 1 to 6

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
  puts "You are all amazing"
end
# => displays "You are all amazing" 30 times


number = 1

10.times do
  puts number
  number += 1
end
# => displays 1 to 10



###############################
########### EXAMPLES ##########
###############################

# Blog posts with EACH:

# You can nest loops inside loops.

blog_posts = [["Blog1", "Description of blog1"], ["Blog2", "Description of blog2"]]

blog_posts.each do |post|
  
  # 1 post looks like this:
  # ["Blog1", "Description of blog1"]

  post.each do |string|
    puts string
  end

end



# Login example with UNTIL:

username = "unicorn"
password = "star!"
logged_in = false
entered_username = ""


until logged_in # it will loop as long as 'logged_in' is false

  unless entered_username == username
    puts "What's your username?"
    print "> "
    entered_username = gets.chomp
  end

  puts "What's your password?"
  print "> "
  entered_password = gets.chomp

  if username == entered_username && password == entered_password
    logged_in = true # this will stop the loop from looping again next time
    puts "you are logged in!"
  else
    puts "wrong credentials"
    puts "==============="
  end

end


# Login example with LOOP:

username = "unicorn"
password = "star"
logged_in = false
entered_username = ""

loop do # it will loop until we use the keyword 'break'
  unless entered_username == username
    puts "What's your username?"
    print "> "
    entered_username = gets.chomp
  end

  puts "What's your password?"
  print "> "
  entered_password = gets.chomp

  if username == entered_username && password == entered_password
    puts "you are logged in!"
    logged_in = true
    break if logged_in # it breaks the loop because now we're logged in
  else
    puts "wrong credentials"
    puts "==============="
  end
end
