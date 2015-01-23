require 'pry'
require "./lib/person"
require "./lib/user"
require "./lib/author"
require "./lib/grocery_list"

name   = User.get_name
gender = User.get_gender
age    = User.get_age

current_user = User.new(name: name, gender: gender, age: age)
current_user.address_person
puts current_user.years_till_75
current_user.robot_terror_scale
puts "<press enter... if you dare>"
gets
assassin_weapons = [ "mind-controlled animals", "folk art", "drinking straws", 
										 "cummerbunds and other formal wear",	"taco shells (hard, of course)" ]

assassin_weapons.each { |item| puts "I've taken out bad guys with #{item}."}

print "The list goes on. And speaking of going on the list, "
puts "I might need some #{assassin_weapons[2]} from the store."

current_user.get_groceries
# binding.pry
current_user_grocery_list = GroceryList.new(file_name: "groceries.txt", owner: current_user)

puts current_user_grocery_list

current_user_grocery_list.owner.name


# require 'csv'
# index = 0
# CSV.open("user_shop_list.csv", "w") do |csv| 
#   csv << ["Item number", "Item"]  			# ==> first row, so make headers
#   while index < user_shop_list.count
#   	# csv << ["Item number", "Item"]		# ==> subsequent lines iterate through til array ends
#   	csv << ["#{index + 1}", "#{user_shop_list[index]}"]
#   	index += 1
# 	end
# end
# grocery_pull = CSV.read("user_shop_list.csv")
# grocery_pull.shift

# revised_shop_list = []
# index = 0
# while index < grocery_pull.count
# 	revised_shop_list << grocery_pull[index][1]
# 	index += 1
# end
# revised_shop_list << "Newest Issue of 'O' Magazine"
# revised_shop_list << "Funyuns"

# revised_shop_list.each_with_index do |item, index|
# 	if index < 9
# 		puts "0#{index +1} -- #{item}"
# 		index += 1
# 	elsif index >= 9
# 		puts "#{index +1} -- #{item}"
# 		index += 1
# 	end
# end

# index = 0
# CSV.open("revised_shop_list.csv", "w") do |csv| 
#   csv << ["Item number", "Item"]  			# ==> first row, so make headers
#   while index < revised_shop_list.count
#   	# csv << ["Item number", "Item"]		# ==> subsequent lines iterate through til array ends
#   	csv << ["#{index + 1}", "#{revised_shop_list[index]}"]
#   	index += 1
# 	end
# end
# people = [user, author]
# puts select_by_name(people, "Bennett")

