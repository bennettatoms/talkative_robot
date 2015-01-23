class GroceryList
  
  attr_accessor :grocery_list, :owner

  def initialize(args)
    @grocery_list = import(args[:file_name])
    @owner        = args[:owner]
  end

  def import(file_name)
    grocery_list = IO.read(file_name).split(", ")
  end

  def to_s
    grocery_list.map.with_index do |item, index|
      "#{index + 1} -- #{item}"
    end.join("\n")
  end    
end
      
def select_by_name(people, name)
    people.select { |person| person[:name] == name }
end