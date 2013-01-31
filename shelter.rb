class Shelter
  attr_accessor :name, :animals, :clients
  def initialize(name)
    @name = name
    @animals = {}
    @clients = {}
  end

  def to_s
    "#{@name} has #{@animals.count} animals and #{@clients.count} clients."
  end
end