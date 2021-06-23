############
##   IF   ##
############


# if (CONDITION)
#   # (CODE that will execute if the condition is true)
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




############
##  ELSE  ##
############


if 10 < 20
  puts "In this case this is true, this code will run"
else
  puts "This code will not run"
end

if 10 > 20
  puts "In this case this is false, this code will not run"
else
  puts "This code will run"
end


correct_password = "Unicorn"
puts "Please enter your password"
entered_password = gets.chomp

if entered_password == correct_password
  puts "You are logged in!"
else
  puts "You have entered the wrong password"
end




#############
##  ELSIF  ##
#############


time = 6

if time > 12
  puts "It's after noon"
elsif time < 12
  puts "It's before noon"
else
  puts "It's noon"
end




##############
##  UNLESS  ##
##############


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




############################
##  RELATIONAL OPERATORS  ##
############################


num1 = 2
num2 = 3

# Equals to
puts num1 == num2
# => this returns false because 2 does not equal 3

# Does not equal to
puts num1 != num2  
# => this returns true

# Greater than
puts num1 > num2  
# => this returns false because 2 is not greater than 3

# Less than
puts num1 < num2  
# => this returns true because 2 is less than 3

puts num1 >= num2  
# => false

puts num1 <= num2  
# => true




#########################
##  BOOLEAN OPERATORS  ##
#########################


# &&  (AND)

# true && true => true
# true && false => false
# false && false => false
# All have to be true for it to return true

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
# 1 or more has to be true for it to return true

if correct_username == entered_username || correct_password == entered_password
  puts "You are logged in because you know either the username, OR the password, OR both"
else
  puts "You are not logged in, wrong credentials for BOTH the username and password"
end


time = 6

if time > 12 || time == 24
  puts "It's after noon or midnight"
elsif time < 12
  puts "It's before noon"
else
  puts "It's noon"
end




#######################################
##  ORDER OF READING: TOP TO BOTTOM  ##
#######################################


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

# Conditional statements read from top to bottom. It will ignore every other condition when it finds a true condition.
# In this example even though time is 6, it still reads "It's after noon", instead of "It's 6 o'clock".


# Soltions: 
# 1. Change the order

time = 6

if time > 12
  puts "It's after noon"
elsif time == 6  # This is now before the 'time < 12' condition
  puts "It's 6 o'clock!"
elsif time < 12
  puts "It's before noon"
else
  puts "It's noon"
end


# 2. Use a boolean operator (&&, ||)

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




##################################
##  NESTING CONTROL STATEMENTS  ##
##################################


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


