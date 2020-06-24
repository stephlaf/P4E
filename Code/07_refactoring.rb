#1. ONE LINE IF / UNLESS

#1.if

goal = true

if goal == true
  puts "You scoreeeeed!"
end

puts "-------"

puts "You scoreeeeed!" if goal

#if goal puts "You scoreeeeed!" -> this wouldn’t work!


#2. unless

age = 12

unless age >= 18
  puts "You can't drive!"
end

puts "-------"

puts "You can't drive!" unless age >= 18




#2. ONE LINE IF / ELSE STATEMENT

goal = false

if goal
  puts "You scoreeeeed!"
else
  puts "You missed :("
end

puts "-------"

goal = true

puts goal ? "You scoreeeeed!" : "You missed :("


#3. CASE STATEMENT

puts "WHERE DO YOU COME FROM?"

nationality = gets.chomp.capitalize

case nationality
  when "Portugal"
      puts "Olá"
  when "France"
      puts "Salut"
  when "Spain"
      puts "Hola"
  else
      puts "I don't know how to greet you in your language :("
end

puts "-------"

puts "WHERE DO YOU COME FROM?"

nationality = gets.chomp.capitalize

 case nationality when "Portugal" then puts "Olá" when "France" then puts "Salut" when "Spain" then puts "Hola" else puts "I don't know how to gree you in your language :(" end



#4. IMPLICIT RETURN

def sum(a, b)
    return a + b
end

puts sum(2,3)



#5. UPTO AND DOWNTO

for num in 95..100
  puts num
end

puts "------"

95.upto(100) { | num | puts num }

puts "------"

95.downto(90) { | num | puts num }



#6. ADDING TO AN ARRAY WITH THE SHOVEL

my_array = [1, 2, 3]

puts my_array.push(4)

puts "........"

my_array = [1, 2, 3]

puts my_array << 4


#(shovel for strings)


string = "Mariana"

puts string << " Marcelino"

puts "--------"

name = "Joe"
age = 25

puts name << " is " << age.to_s << " years old."



#7. CONDITIONAL ASSIGNMENT

user1_email = nil

if user1_email.nil?
    user1_email = "default1@mail.com"
end

puts user1_email


puts "-----"


user2_email = nil

user2_email ||= "default2@mail.com"

puts user2_email
