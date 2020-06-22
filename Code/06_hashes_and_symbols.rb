#1. SYMBOLS ARE IMMUTABLE

my_name = "mariana"

puts my_name.capitalize

puts my_name

puts my_name.capitalize!

puts my_name


puts "----------"


my_name = :mariana

puts my_name.upcase

puts my_name

puts my_name.upcase!



#2. SYMBOLS AS KEYS

my_hash = {
  :cat => "Garfield",
  :dog => "Snoopy",
  :bird => "Tweety"
}

puts cat_name = my_hash[:cat]



#3. COVERTING SYMBOLS TO STRINGS AND VICE-VERSA

name1 = "Zoe".to_sym

puts name1.class



name2 = :maria.to_s

puts name2.class



#4. RUBY NEW SYNTAX

my_hash = {
  :cat => "Garfield",
  :dog => "Snoopy",
  :bird => "Tweety"
}

puts cat_name = my_hash[:cat]


puts "----------"

my_hash = {
  cat: "Garfield",
  dog: "Snoopy",
  bird: "Tweety"
}

puts cat_name = my_hash[:cat]


#5. SETTING DEFAULT VALUES

my_hash = Hash.new("Zack")

my_hash[:teacher1] = "Zoe"
my_hash[:teacher2] = "Maria"
my_hash[:teacher3] = "Lucas"

puts my_hash

puts my_hash[:teacher1]
puts my_hash[:teacher2]
puts my_hash[:teacher3]

puts my_hash[:teacher4]
puts my_hash[:teacherX]




#6. ITERATING SELECTIVELY OVER A HASH

grades = {
  alice: 100,
  bob: 92,
  chris: 95,
  dave: 97
}

puts grades.select { | name, grade | grade <  97 }





#7. ITERATING OVER ONLY KEYS OR ONLY VALUES

#KEYS

grades = {
  alice: 100,
  bob: 92,
  chris: 95,
  dave: 97
}

grades.each_key do |k|
  puts k
end


#VALUES

grades = {
  alice: 100,
  bob: 92,
  chris: 95,
  dave: 97
}

grades.each_value do |v|
  puts v
end


#if we wanted keys and values we already know the drill:

grades = {
  alice: 100,
  bob: 92,
  chris: 95,
  dave: 97
}

grades.each do |k, v|
  puts "#{k} grade is: #{v}"
end
