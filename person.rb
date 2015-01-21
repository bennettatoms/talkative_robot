require 'pry'

class Person
  
  attr_accessor :name, :gender, :age, :groceries, :terror
  
  def initialize(args)
    @name         = args[:name]   || "Burt"
    @gender       = args[:gender] || "male"
    @age          = args[:age]    || 0
    @groceries    = nil
    @terror       = 0
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

  def robot_terror_scale
    puts "On a scale of 1 - 10, with 1 being the least, how afraid of robots are you?"
    @terror = gets.chomp.to_i
    puts "You should be at more like a #{@terror * 10}. I moonlight as an assassin."
    @terror
  end 

  # def self.get_grocery_list
  #   print "What items are on your grocery list? "
  #   puts "[Please enter all items separated by a comma, then press <enter>]"
  #   @groceries = gets.chomp.split(", ")
  #   return @groceries
  # end

  # def send_grocery_list
  #   @groceries = IO.write("user_grocery_list.txt", @groceries)
  # end  

  def male?
    @gender == "male"
  end   

  def under_18?
    @age < 18
  end

  def over_55?
    @age > 55
  end
end 