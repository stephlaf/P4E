# Yay! Looping in Ruby!

# counter 1-10 using a while loop

counter = 1

while counter < 11
  puts counter
  counter += 1
end


#  until loop

counter = 1

until counter > 10
  puts counter
  counter += 1
end

#  For loops

for num in 1..10 do
  puts num
end

for num in -10...1 do
  puts num
end

for number in 1..10 do
  #  use the next keyword to skip blockes of code based on a conditional (if) statement!
  next if number % 2 != 0
  puts number
end

# refactoring your code makes it simpler to read: do and end can be replaced by curly braces: { }


loop do
  puts "Hi there!"
  # add the break keyword to stop infinite loops!
  break
end

# single line block, infinite loop
# loop { "Hi there!" }

number = 0

loop do
  puts "Hi there!"
  number += 1
  break if number == 5
end


#  Each loop

names = ["Jasmine", "Sohail", "Lateef", "Elissa", "Marina"]

names.each do |hotdog|
  puts "Hello, #{hotdog}!"
end

# Times loop

10.times do
  puts "Wow, what a great audience!"
end

#  favourite number activity!

puts "What's your favourite number?"

number = gets.chomp

# gets.chomp gives me a string, so I need to convert my data
number.to_i

number.times do
  puts "Hello * #{number}"
end

#  user login

user = "Lateef"
password = "123456"
logged_in = false

until logged_in
  puts "what is your username?"

  user_username = gets.chomp

  puts "What is your password?"

  user_password = gets.chomp

  if user_username == user && user_password == password
    puts "You have successfully logged in!"
    logged_in = true
  else
    puts "You have the wrong credentials. Please try again"
  end
end
