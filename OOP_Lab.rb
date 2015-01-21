# OOP Lab

## Add on to previous lab with:

# Create User class
  # use class methods to gather user info
  # initialize with name, age, and other questions that are prompted
  # create getter and setter methods for each question asked
# Set current_user = User.new(...) by passing in a hash of args
# In the script, change user[:name] to its getter method version
# Create GroceryList class
  # initialize with file name
  # pull other methods into GroceryList class
# Create a Person class
# Create an Author class
# Set it so that both User and Author inherit from Person
# For any shared behavior between User and Author, put it in Person
# Pass in the User instance into the GroceryList initialize, so there’s a connection
# Should be able to run:
  # user = User.new({ name: “Gerry”, age: 28, gender: “M” })
  # grocery_list = GroceryList.new(“grocery_list.txt”, user)
  # grocery_list.owner.name # => “Gerry”


## Bonus:

# Create a new folder and repo on GitHub
# Create a unique example that applies OOP
  # Example: Vehicles, Cars, Trucks
  # Make up your example though -- think of something that interests you
# Apply OOP
class Person

  def self.get_name
    print "Name?"
    gets.chomp 
  end
  
  def self.get_gender
    print "Gender? [M/F]"
    gets.chomp.capitalize
  end
  
  def self.get_age
    print "Age?"
    gets.chomp.to_i
  end       

  attr_accessor :name, :gender, :age

  def initialize(args)
    @brain? = args[:brain] || true
    @name   = args[:name]
    @gender = args[:gender]
    @age    = args[:age]
  end 

  def male?
    gender == "M"
  end 
  
  def old?
    age > 55
  end
  
  def young?
    age < 18
  end     
end    

class Author < Person
  def initialize(args = {}) # sets default value
    super(args)
    @name   = "Bennett"
    @gender = "M"
    @age    = 34
   end 
end

class User < Person

  def initialize(args)
    super(args) 
  end 

  def get_gender
    print "What's your gender? [M/F]"
    @gender = gets.chomp.capitalize
  end   
end  

class GroceryList
  attr_accessor :grocery_list, :owner

  # def owner
  #   @owner
  # end

  # def new_owner=(new_owner)
  #   @owner = new_owner
  # end  

  # def grocery_list
  #   @grocery_list
  # end

  # def grocery_list=(new_grocery_list)
  #   @grocery_list = new_grocery_list
  # end  

### ALL the above methods are accounted for by attr_accessor :grocery_list, :owner


  def initialize(file_name, owner)
    @grocery_list = import(file_name)
    @owner        = owner
  end

  def import_list(file_name)
    IO.read(file_name).split("\n") # Assuming stacked on top of each other
  end

  def to_s
    grocery_list.map.with_index do |item, index|
      puts "\n #{index + 1} -- #{item}"
    end.join("\n")  

    # same as...
    # grocery_list.map.with_index { |item, index| "#{index + 1} -- #{item} }.join("\n")

  end
end



groceries = GroceryList.new(file_name, current_user)




