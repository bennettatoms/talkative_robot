class User < Person
  
  attr_accessor :name, :gender, :age, :groceries

  def initialize(args)
    super
  end

  def address_person
    if over_55?
      grandparent = male? ? "grandfather" : "grandmother"
      puts "Are you a #{grandparent}? [Y/N]"
      spawn = gets.chomp.capitalize
      puts "Aww, congratulations on your big genetic footprint!" if spawn == "Y"
    elsif under_18?
      gender_informal = male? ? "boy" : "girl"
      puts "You're a young #{gender_informal}! Are you still in school? [Y/N]"
      study = gets.chomp.capitalize
      puts "I wish I could go to school like you." unless study == "N"
    else
      greeting = male? ? "man" : "woman"
      pronoun = greeting == "man" ? "his" : "her"
      puts "It must be nice to be a #{greeting} who looks younger than #{pronoun} age!"
    end
  end

  def years_till_75
    milestone = 75
    age_delta = (milestone - @age).abs
    if    @age < milestone
      print "You'll be 75 in #{age_delta} years, #{@name}."
    elsif @age > milestone
      print "You were 75 #{age_delta} years ago, #{@name}."
    elsif @age == milestone
      print "You're 75! Quite the milestone, #{@name}."
    end
  end

  def get_groceries
    print "What items are on your grocery list? "
    puts "[Please enter all items separated by a comma, then press <enter>]"
    groceries = gets.chomp.split("\n")
    IO.write("groceries.txt", groceries.join("\n"))
  end

  # def export(file_name)
  
  # end  

  def reminder_to_grab_item(item)
    puts "Did you already grab the #{item}? [Y/N]"
  end
end