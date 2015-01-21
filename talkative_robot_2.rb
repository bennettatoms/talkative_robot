require 'pry'

class Person
  
  attr_accessor :name, :gender, :age, :grocery_list
  
  def initialize(args)
    @name   			= args[:name]   || nil
    @gender 			= args[:gender] || nil
    @age    			= args[:age]    || 0
    @grocery_list = nil
  end

  def self.get_name
  puts "Hi, what's your name?"
  @name = gets.chomp.capitalize
  return @name
  end

  def self.get_gender
    puts "Are you male or female? [M/F]"
    gender = gets.chomp.capitalize
    until gender == "M" || gender == "F"
      puts "Are you male or female? [M/F]"
      gender = gets.chomp.capitalize
    end
    case 
    when gender == "M"
      @gender = "male"
    when gender == "F"
      @gender = "female"  
    end
    return @gender
  end 

  def self.get_age
    puts "What's your age?"
    @age = gets.chomp.to_i
    until @age > 0
      puts "Please enter a positive number for your age:"
      @age = gets.chomp.to_i
    end
    return @age
  end 


  def self.get_grocery_list
    print "What items are on your grocery list? "
    puts "[Please enter all items separated by a comma, then press <enter>]"
    @grocery_list = gets.chomp.split(", ")
    return @grocery_list
  end
  	# user_grocery_list = GroceryList.new("user_grocery_list.txt", @name)

    # user_grocery_list = gets.chomp.split(", ") 
    # return user_grocery_list
    # user_grocery_list = IO.write("user_grocery_list.txt", user[:name])
    # # user_grocery_list = GroceryList.New("grocery_list.txt", user[:name])
  

  # def to_s
  #   "#{@name} is a #{@age}-year-old #{@gender}."
  # end
end 

class User < Person
  
  attr_accessor :name, :gender, :age, :terror

  def initialize(args)
    super
    @terror            = 0
 
  end

  def robot_terror_scale
    puts "On a scale of 1 - 10, with 1 being the least, how afraid of robots are you?"
    @terror = gets.chomp.to_i
    puts "You should be at more like a #{terror * 10}. I moonlight as an assassin."
    @terror
  end 

  # def to_s
  #   "#{@name} is a #{@age}-year-old #{@gender} who fears robots at #{@terror}/10, 
  #    which isn't nearly enough."
  # end

  def male?(gender)
		@gender == "male"
	end		

  def under_18?(age)
		@age < 18
	end

	def over_55?(age)
		@age > 55
	end

	def address_person
	  if over_55?(@age)
	  	grandparent = male?(@gender) ? "grandfather" : "grandmother"
	  	puts "Are you a #{grandparent}? [Y/N]"
			spawn = gets.chomp.capitalize
			puts "Aww, congratulations on your big genetic footprint!" if spawn == "Y"
		elsif under_18?(@age)
			gender_informal = male?(@gender) ? "boy" : "girl"
			puts "You're a young #{gender_informal}! Are you still in school? [Y/N]"
			study = gets.chomp.capitalize
			puts "I wish I could go to school like you." unless study == "N"
		else
			greeting = male?(@gender) ? "man" : "woman"
			pronoun = greeting == "man" ? "his" : "her"
			puts "It must be nice to be a #{greeting} who looks younger than #{pronoun} age!"
		end
	end

  def years_till_75
		milestone = 75
		age 			= @age
		age_delta = (milestone - @age).abs
		if    @age < milestone
			print "You'll be 75 in #{age_delta} years, #{@name}."
		elsif @age > milestone
			print "You were 75 #{age_delta} years ago, #{@name}."
		elsif @age == milestone
			print "You're 75! Quite the milestone, #{@name}."
		end
	end

  # def grocery_list_to_file
  # 	user_grocery_list = IO.write("user_grocery_list.txt", @name)
  # end	

  def reminder_to_grab_item(item)
		puts "Did you already grab the #{item}? [Y/N]"
	end

	
 # use class methods to gather user info
  # initialize with name, age, and other questions that are prompted
  # create getter and setter methods for each question asked
# Set current_user = User.new(...) by passing in a hash of args
end

class Author < Person

  attr_reader :name, :gender, :age

  def initialize(args)
    super
    @name   = "Bennett"
    @gender = "male"
    @age    = 34
  end
end  

class GroceryList
  
  attr_reader :file, :owner

  def initialize(args)
    @file 	= args[:file]
    @owner  = args[:owner]
  end

  def owner
    @owner
  end

  def pull_grocery_list
  	user_groceries = IO.read("user_grocery_list.txt").split("\n")
  end
end
			
def select_by_name(people, name)
		people.select { |person| person[:name] == name }
end


# binding.pry
name   = User.get_name
gender = User.get_gender
age    = User.get_age

user = User.new(name: name, gender: gender, age: age)
user.address_person
puts user.years_till_75
user.robot_terror_scale
puts "<press enter... if you dare>"
gets
assassin_weapons = [ "mind-controlled animals", "folk art", "drinking straws", 
										 "cummerbunds and other formal wear",	"taco shells (hard, of course)" ]

assassin_weapons.each { |item| puts "I've taken out bad guys with #{item}."}


print "The list goes on. And speaking of going on the list, "
puts "I might need some #{assassin_weapons[2]} from the store."
# user.get_grocery_list
user_grocery_list = User.get_grocery_list
user_grocery_list = IO.write("user_grocery_list.txt", user_grocery_list)
groceries = GroceryList.new(file: "user_grocery_list.txt", owner: @name)
groceries.owner
# binding.pry
# puts user_grocery_list
# user_grocery_list = GroceryList.new("user_grocery_list.txt", user[:name])
# binding.pry
# groceries = GroceryList.new(file_name: "user_grocery_list.txt", owner: @name)
# puts groceries
# puts user_grocery_list
# user_grocery_list.owner.name

# grocery_list << assassin_weapons[2]
# puts

# random_item = user_shop_list.sample
# reminder_to_grab_item(random_item)
# got_it = gets.chomp.capitalize
# if got_it == "Y"
# 	puts "OK, let's remove #{random_item} from the list."
# 	user_shop_list.delete(random_item)
# 	puts user_shop_list
# else
# 	puts "Well, I'm sure you won't forget."
# end

# puts"<press enter>"
# gets

# puts "Oh yeah, don't forget the bread!"
# user_shop_list.push("Bread")

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
people = [user, author]
puts select_by_name(people, "Bennett")


IO.write("groc_list.txt", user_shop_list.join("\n"))

user_groceries = IO.read("groc_list.txt").split("\n")

3.times do
	user_groceries.shift
end

user_groceries << "Newest Issue of 'O' Magazine"
user_groceries << "Funyuns"

# binding.pry
user_groceries.each_with_index do |item, index|
	if index <= 10
		puts "0#{index +1} -- #{item}"
		index += 1
	elsif index > 10 && index <= 20
		puts "1#{index +1} -- #{item}"
		index += 1
	end
end

new_user_shop_list = user_groceries.join(", ")
IO.write("new_user_shop_list.txt", new_user_shop_list)
# # binding.pry



# binding.pry
