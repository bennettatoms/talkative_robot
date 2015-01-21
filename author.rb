class Author < Person

  attr_reader :name, :gender, :age

  def initialize(args)
    super
    @name   = "Bennett"
    @gender = "male"
    @age    = 34
  end
end  
