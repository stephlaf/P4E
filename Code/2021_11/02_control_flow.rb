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


correct_password = "password1"

puts "What is your password?"

print "> "
user_password = gets.chomp

if user_password == correct_password
  puts "You are logged in!"
end



# 2. ELSE

if user_password == correct_password
  puts "You are logged in!"
else
  puts "Error, you did not write the correct password"
end

if 10 < 20
  puts "This is true, this code will run"
else
  puts "This code will not run"
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

time = 19

unless time == 12
  puts "it's not noon"
end

# ^THIS IS THE SAME AS THIS:
if time != 12
  puts "it's not noon"
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

# AND (&&) 

# true && true => true
# true && false => false
# false && false => false
# All conditions have to be true for it to return true

puts 10 == 10 && 22 == 22 && 20 == 20
# => true

puts 10 == 10 && 22 == 10
# => false because 22 is not the same as 10

# OR (||)

# true || true => true
# true || false => true
# false || false => false

puts 10 == 10 || 10 == 11 || 10 == 12 || 10 == 13
# => true because at least one condition was true



puts "Please input your username"
print "> "
users_username = gets.chomp

puts "Please input your password"
print "> "
users_password = gets.chomp

username = "Sara F"
password = "Lily123"

if username == users_username && password == users_password
  puts "You have successfully logged in!"
elsif username == users_username || password == users_password
  puts "One of your credentials is incorrect"
else
  puts "Go home, you're drunk!"
end


# Using both boolean operators

age = 17
citizen = false
resident = true

if age >= 18 && (citizen || resident)
  puts "You can vote"
else
  puts "You can't vote"
end



# 8. NESTING CONTROL STATEMENTS
# You can put 'if' statements inside other 'if' statements, etc. Just be sure to focus on your indentation to avoid confusion!


username = "Sara F"
password = "Lily123"

puts "What is your username?"
print "> "
entered_username = gets.chomp

puts "What is your password?"
print "> "
entered_password = gets.chomp

if username == entered_username && password == entered_password
  puts "Welcome, #{username}!"
  puts "Do you want to change your password?"
  print "> "
  answer = gets.chomp

  if answer.downcase == "yes"
    puts "Enter your new password"
    password = gets.chomp
    puts "Your new password is #{password}"
  elsif answer.downcase == "no"
    puts "We will not change your password."
  else
    puts "This option does not exist"
  end

else
  puts "You have the wrong credentials."
end
