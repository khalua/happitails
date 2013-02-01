class Animal
  attr_accessor :name, :owner, :species, :breed, :age, :gender, :favorite_toys
  def initialize(name, species, breed, age, gender)
    @name = name
    @owner = nil
    @species = species
    @breed = breed
    @age = age
    @gender = gender
    @favorite_toys = []
  end

  def add_owner(owner_name)
    @owner = owner_name
  end



  def to_s
    "#{name} is a #{@species}, breed: #{@breed}"
  end


end