class Client
  attr_accessor :name, :age, :gender, :kids, :num_pets
  def initialize (name, age, gender, kids, num_pets)
    @name = name
    @age = age
    @gender = gender
    @kids = kids
    @num_pets = num_pets
  end





  def to_s
    "client #{name} is a #{age} old #{gender} and has #{kids} spawnlings and #{pets} animals "
  end
end
