require_relative './person'

class Author < Person

  attr_reader :name, :gender, :age

  def initialize(args)
    super(args)
    @name   = "Bennett"
    @gender = "male"
    @age    = 34
  end
end  
