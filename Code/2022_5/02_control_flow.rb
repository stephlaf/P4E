#  Session #2: Control Flow with Ruby! 🧑‍💻

# if/else statements

num = 5
num2 = 7

if num > num2
  puts "#{num} is greater than #{num2}"
else
  puts "#{num} is NOT greater than #{num2}"
end

if "hello" == "hello"
  puts "Hello!"
end

# tell the time!

time = 13

# remember, put your most specific conditions first!

if time == 13
  puts "it's 1pm!"
elsif time > 12
  puts "it's past noon!"
elsif time < 12
  puts "it's before noon!"
else
  puts "it's noon!"
end

# unless statement

time = 12

unless time == 12
  puts "it's not noon!"
end

# voting age

name = "Sarah"
age = 18
citizen = false
resident = true


if age >= 18 && (citizen || resident)
  puts "#{name} can vote!"
else
  puts "sadly, you can't vote!"
end

# this statement will evaluate to true, because only one statement has to be true

if 6 == 7 || 6 == 6 || 6 == 8
  puts "this is true"
end


# user authentication
# this portion of code uses all of our previous concepts!

user = "Mila 123"
password = "123456"


puts "What is your username?"

input_username = gets.chomp

puts "What is your password?"

input_password = gets.chomp

if user == input_username && password == input_password
  puts "you're logged in!"
elsif user == input_username || password == input_password
  puts "one of your credentials is wrong."
else
  puts "go home!"
end
