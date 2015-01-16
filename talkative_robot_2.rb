require 'pry'

# puts "Hi, what's your name?"
# name = gets.chomp

# puts "What is your gender [MF]?" # Experiment with using print instead of puts
# gender = gets.chomp
# puts "Ok, how old are you?"
# age  = gets.chomp.to_i
grocery_list = ["Salad Stuff", "Milk", "Bottled Water", "Eggs", "Ice Cream", 
								"Paper Towels", "Diapers"]


def get_name
	puts "Hi, what's your name?"
	name = gets.chomp.capitalize
	return name
end	

def get_gender
	puts "Are you male or female? [M/F]"
	gender = gets.chomp.capitalize
	until gender == "M" || gender == "F"
		puts "Are you male or female? [M/F]"
		gender = gets.chomp.capitalize
	end
	return gender
end	

def get_age
	puts "And your age?"
	age = gets.chomp.to_i
	until age > 0
		puts "Please enter a positive number for your age:"
		age = gets.chomp.to_i
	end
	return age
end	

user = {
					name: get_name,
				gender: get_gender,
					 age: get_age,
}

user_shop_list = ["Salad Stuff", "Milk", "Bottled Water", "Eggs", "Ice Cream", 
								"Paper Towels", "Diapers"]
# user_name = get_name
# user_gender = get_gender
# user_age = get_age

# if age > 55
# 	greeting = gender == "M" ? "grandfather" : "grandmother"
# 	puts "Are you a #{greeting}? [Y/N]"
# 	spawn = gets.chomp
# 	puts "Aww, congratulations on your big genetic footprint!" if spawn == "Y"
# elsif age < 18
# 	greeting = gender == "M" ? "boy" : "girl"
# 	puts "You're a young #{greeting}! Are you still in school? [Y/N]"
# 	study = gets.chomp
# 	puts "I wish I could go to school like you." unless study == "N"
# else 
# 	greeting 	= gender == "M" ? "man" : "woman"
# 	pronoun 	= gender == "M" ? "his" : "her"
# 	puts "It must be nice to be a #{greeting} who looks younger than #{pronoun} age!"
# end
def male?(gender)
	gender == "M" || gender == "Male"
end

# can then add...
# def male?(user)
# 	user[:gender] == "M" || user[:gender] == "male"
# end

#NOTE >> if you did the following...
# def male?(user)
# 	user[:gender] == "M" || "male"		==> would return 'true' no matter what
# end																			because a string is always true


# falsey: false, nil
# truethy: true, everything else


def under_18?(age)
	return age < 18
end

def over_55?(age)
	return age > 55
end

if over_55?(user[:age])
	grandparent = male?(user[:gender]) ? "grandfather" : "grandmother"
	puts "Are you a #{grandparent}? [Y/N]"
	spawn = gets.chomp.capitalize
	puts "Aww, congratulations on your big genetic footprint!" if spawn == "Y"

elsif under_18?(user[:age])	
	gender_informal = male?(user[:gender]) ? "boy" : "girl"
	puts "You're a young #{gender_informal}! Are you still in school? [Y/N]"
	study = gets.chomp.capitalize
	puts "I wish I could go to school like you." unless study == "N"

else
	greeting = male?(user[:gender]) ? "man" : "woman"
	pronoun = greeting == "man" ? "his" : "her"
	puts "It must be nice to be a #{greeting} who looks younger than #{pronoun} age!"

end

# def parent_greeting(user)
# 	male?(user) ? "father" : "mother"
# end
# 
# def child_greeting(user)
# 	male?(user) ? "boy" : "girl"
# end

# def print_child_or_parent_greeting(user)
# puts "Are you a grand#{parent_greeting(user)}?" if user[:age] > 60
# puts "Are you a great-grand#{parent_greeting(user)}?" if user[:age] > 80
# puts "You're a young #{child_greeting(user)}" if user[:age] < 14
# end

# if user_age > 55
# 	grandparent = male?(user_gender) && over_55?(user_age) ? "grandfather" : "grandmother"
# 	puts "Are you a #{grandparent}? [Y/N]"
# 	spawn = gets.chomp.capitalize
# 	puts "Aww, congratulations on your big genetic footprint!" if spawn == "Y"

# elsif user_age < 18
# 	gender_informal = male?(user_gender) && under_18?(user_age) ? "boy" : "girl"
# 	puts "You're a young #{gender_informal}! Are you still in school? [Y/N]" if under_18?(user_age)
# 	study = gets.chomp.capitalize
# 	puts "I wish I could go to school like you." unless study == "N"

# else
# 	greeting = male?(user_gender) && !under_18?(user_age) && !over_55?(user_age) ? "man" : "woman"
# 	pronoun = greeting == "man" ? "his" : "her"
# 	puts "It must be nice to be a #{greeting} who looks younger than #{pronoun} age!"

# end


# case age
# when 0..75
# 	puts "You'll be 75 in #{75 - age} years, #{name}."
# when 75
# 	puts "Wow! You're 75, #{name}!"
# when 76..150
# 	puts "You were 75 #{age - 75} years ago, #{name}."
# end

# def years_till_75(age)
# 	if age < 75
# 		years = (75 - age) 
# 		print "You'll be 75 in #{years} years, "
# 	elsif age > 75
# 		years = (age - 75)
# 		print "You were 75 #{years} years ago, "
# 	else
# 		print "You're 75! Quite the milestone, "
# 	end
# end

def years_till_75(user)
	milestone = 75
	age 			= user[:age]
	age_delta = (milestone - age).abs
	if    age < milestone
		print "You'll be 75 in #{age_delta} years, #{user[:name]}."
	elsif age > milestone
		print "You were 75 #{age_delta} years ago, #{user[:name]}."
	elsif age == milestone
		print "You're 75! Quite the milestone, #{user[:name]}."
	end
end

# years_till_75(user)



puts years_till_75(user)


def robot_terror_scale
	puts "On a scale of 1 - 10, with 1 being the least, how afraid of robots are you?"
	terror = gets.chomp.to_i
	puts "You should be at more like a #{terror * 10}. I moonlight as an assassin."
end

robot_terror_scale
puts "<press enter... if you dare>"
gets
assassin_weapons = [ "mind-controlled animals", "folk art", "drinking straws", 
										 "cummerbunds and other formal wear",	"taco shells (hard, of course)" ]

assassin_weapons.each { |item| puts "I've taken out bad guys with #{item}."}


puts "The list goes on. And speaking of going on the list, 
			I might need some #{assassin_weapons[2]} from the store."
user_shop_list << assassin_weapons[2]
puts

def reminder_to_grab_item(item)
	puts "Did you already grab the #{item}? [Y/N]"
end

random_item = user_shop_list.sample
reminder_to_grab_item(random_item)
got_it = gets.chomp.capitalize
if got_it == "Y"
	puts "OK, let's remove #{random_item} from the list."
	user_shop_list.delete(random_item)
	puts user_shop_list
else
	puts "Well, I'm sure you won't forget."
end

# def got_item?(item)
# 	puts "Did you get the #{item}? [y/n]"
# end
# got_item?(random_grocery_item)

puts"<press enter>"
gets

puts "Oh yeah, don't forget the bread!"
user_shop_list.push("Bread")

# grocery_list.each { |item| puts "#{index + 1} -- #{item}" }
# puts

# puts user_shop_list

require 'csv'
index = 0
CSV.open("user_shop_list.csv", "w") do |csv| 
  csv << ["Item number", "Item"]  			# ==> first row, so make headers
  while index < user_shop_list.count
  	# csv << ["Item number", "Item"]		# ==> subsequent lines iterate through til array ends
  	csv << ["#{index + 1}", "#{user_shop_list[index]}"]
  	index += 1
	end
end
grocery_pull = CSV.read("user_shop_list.csv")
grocery_pull.shift

revised_shop_list = []
index = 0
while index < grocery_pull.count
	revised_shop_list << grocery_pull[index][1]
	index += 1
end
revised_shop_list << "Newest Issue of 'O' Magazine"
revised_shop_list << "Funyuns"

revised_shop_list.each_with_index do |item, index|
	if index < 9
		puts "0#{index +1} -- #{item}"
		index += 1
	elsif index >= 9
		puts "#{index +1} -- #{item}"
		index += 1
	end
end

index = 0
CSV.open("revised_shop_list.csv", "w") do |csv| 
  csv << ["Item number", "Item"]  			# ==> first row, so make headers
  while index < revised_shop_list.count
  	# csv << ["Item number", "Item"]		# ==> subsequent lines iterate through til array ends
  	csv << ["#{index + 1}", "#{revised_shop_list[index]}"]
  	index += 1
	end
end

# IO.write("groc_list.txt", user_shop_list.join("\n"))

# user_groceries = IO.read("groc_list.txt").split("\n")

# 3.times do
# 	user_groceries.shift
# end

# user_groceries << "Newest Issue of 'O' Magazine"
# user_groceries << "Funyuns"

# # binding.pry
# user_groceries.each_with_index do |item, index|
# 	if index <= 10
# 		puts "0#{index +1} -- #{item}"
# 		index += 1
# 	elsif index > 10 && index <= 20
# 		puts "1#{index +1} -- #{item}"
# 		index += 1
# 	end
# end

# new_user_shop_list = user_groceries.join(", ")
# IO.write("new_user_shop_list.txt", new_user_shop_list)
# # binding.pry


author = { name: "Bennett", gender: "M",  age: 34 }

people = [user, author]

def all_about_a_person(people)
	people.each { |key, value| puts "The person's #{key} is #{value}." }
end

all_about_a_person(people[1])
