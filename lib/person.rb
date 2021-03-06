require 'pry'

class Person
  
  attr_accessor :name, :gender, :age, :terror
  
  def initialize(args)
    @name         = args[:name]   || "Burt"
    @gender       = args[:gender] || "male"
    @age          = args[:age]    || 0
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

  def male?
    gender == "male" || gender == "M" || gender == "m" || gender == "Male"
  end   

  def under_18?
    age < 18
  end

  def over_55?
    age > 55
  end
end 