puts "Hi, what's your name?"
name = gets.chomp

puts "What is your gender [MF]?" # Experiment with using print instead of puts
gender = gets.chomp
puts "Ok, how old are you?"
age  = gets.chomp.to_i

if age > 55
	greeting = gender == "M" ? "grandfather" : "grandmother"
	puts "Are you a #{greeting}? [Y/N]"
	spawn = gets.chomp
	puts "Aww, congratulations on your big genetic footprint!" if spawn == "Y"
elsif age < 18
	greeting = gender == "M" ? "boy" : "girl"
	puts "You're a young #{greeting}! Are you still in school? [Y/N]"
	study = gets.chomp
	puts "I wish I could go to school like you." unless study == "N"
else 
	greeting 	= gender == "M" ? "man" : "woman"
	pronoun 	= gender == "M" ? "his" : "her"
	puts "It must be nice to be a #{greeting} who looks younger than #{pronoun} age!"
end


case age
when 0..75
	puts "You'll be 75 in #{75 - age} years, #{name}."
when 75
	puts "Wow! You're 75, #{name}!"
when 76..150
	puts "You were 75 #{age - 75} years ago, #{name}."
end

# if name == "Ernest" 
# 	puts "I knew it was you!"
# else 
# 	puts "Sorry, you’re not Ernest."
# end

# puts "Hi, #{name}, who is #{age} years old."
# first_initial = name.chars.first.capitalize
# puts "Do you mind if I call you #{first_initial}?"
# puts "You will be 75 years old in #{(75 - age.to_i)} years."
# name.upcase! # ! vs not-!
# puts "Hey, #{name}, where are you going!?"

# puts "Hey, \"Dude\", what's up?"
 
# Print a message based off age
# Using in-line if
# Using in-line unless
# if/else
# Case (if < 75 “You’ll be 75 in x years”, == 75 (you’re 75!), > 75 “You turned 75 y years ago”)
# Display messages based on both age and gender
# “You are a young boy/girl.”
# “Are you a great-great grandmother/father?” (make sure age is very high!)
# Add a ternary operator somewhere


# puts "Wow, you don't look your age." if age > 50
# puts "Boy, you look so young." unless age < 21
