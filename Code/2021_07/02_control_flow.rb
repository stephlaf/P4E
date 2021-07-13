# 1. IF

# if (CONDITION)
#   # Code that will execute if the condition is true
# end

if 10 < 20
  puts "This is true! This code will run"
end

if 10 > 20
  puts "This code will not run because it is false!"
end

correct_password = "Unicorn"
puts "Please enter your password"
entered_password = gets.chomp

if entered_password == correct_password
  puts "You are logged in!"
end

# 2. ELSE

if 10 < 20
  puts "This is true, this code will run"
else
  puts "This code will not run"
end

if 10 > 20
  puts "This is false, this code will not run"
else
  puts "This code will run instead"
end

correct_password = "Unicorn"
puts "Please enter your password"
entered_password = gets.chomp

if entered_password == correct_password
  puts "You are logged in!"
else
  puts "You have entered the wrong password"
end

# 3. ELSIF

time = 6

if time > 12
  puts "It's after noon"
elsif time < 12
  puts "It's before noon"
else
  puts "It's noon"
end

# 4. UNLESS

correct_password = "Unicorn"
puts "Please enter your password"
entered_password = gets.chomp

unless correct_password == entered_password
  puts "This is the wrong password"
else
  puts "You are logged in!"
end

# ^THIS IS THE SAME AS THIS:
if correct_password != entered_password
  puts "This is the wrong password"
else
  puts "You are logged in!"
end

# 5. RELATIONAL OPERATORS

x = 2
y = 3

# Same as
puts x == y
# => this returns false because 2 is not the same as 3

# Not the same as
puts x != y
# => this returns true

# Greater than
puts x > y
# => this returns false because 2 is not greater than 3

# Less than
puts x < y
# => this returns true because 2 is less than 3

puts x >= y
# => false

puts x <= y
# => true

# 6. BOOLEAN OPERATORS

# &&  (AND)

# true && true => true
# true && false => false
# false && false => false
# All conditions have to be true for it to return true

correct_username = "Star"
puts "Please enter your username"
entered_username = gets.chomp

correct_password = "Unicorn"
puts "Please enter your password"
entered_password = gets.chomp

if correct_username == entered_username && correct_password == entered_password
  puts "You are logged in!"
else
  puts "You are not logged in, wrong credentials"
end

# ||  (OR)

# true || true => true
# true || false => true
# false || false => false
# At least one condition has to be true for it to return true

time = 6

if time > 12 || time == 24
  puts "It's after noon or midnight"
elsif time < 12
  puts "It's before noon"
else
  puts "It's noon"
end

# Using both boolean operators

age = 21
citizen = true
resident = false

if age >= 18 && (citizen || resident)
  puts "You can vote!"
else
  puts "You can't vote."
end

# 7. ORDER OF READING: TOP TO BOTTOM

time = 6

if time > 12
  puts "It's after noon"
elsif time < 12
  puts "It's before noon"
elsif time == 6
  puts "It's 6 o'clock!"
else
  puts "It's noon"
end
# => will display "It's before noon" because it's the first condition to return true.
# It will skip the rest of the if statement and execute the next instructions.

# Solutions:
# Change the order, with the most precise on top

time = 6

if time == 6
  puts "It's 6 o'clock!"
elsif time > 12
  puts "It's after noon"
elsif time < 12
  puts "It's before noon"
else
  puts "It's noon"
end

# Use a boolean operator (&&, ||)

time = 6

if time > 12
  puts "It's after noon"
elsif time < 12 && time != 6
  puts "It's before noon"
elsif time == 6
  puts "It's 6 o'clock!"
else
  puts "It's noon"
end

# 8. NESTING CONTROL STATEMENTS
# You can put 'if' statements inside other 'if' statements, etc. Just be sure to focus on your indentation to avoid confusion!

correct_username = "John Smith"
correct_password = "John's Password"

puts "What is your username?"
entered_username = gets.chomp

puts "What is your password?"
entered_password = gets.chomp

if entered_username == correct_username && entered_password == correct_password
  puts "Welcome #{correct_username}!"
  puts "Do you want to change your password?"
  answer = gets.chomp

  if answer == "yes"
    # The 'if' statement is indented because it is INSIDE the other 'if' statement.
    puts "What will be your new password?"
    new_password = gets.chomp
    correct_password = new_password
    puts "This is your new password: #{correct_password}"
  elsif answer == "no"
    puts "Ok, we will not change your password"
  else
    puts "Unknown reply"
  end

else
  puts "Wrong Password"
end
