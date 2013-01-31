class Animal
  attr_accessor :name, :type, :breed, :age, :gender, :favorite_toys
  def initialize(name, type, breed, age, gender, favorite_toys)
    @name = name
    @type = type
    @breed = breed
    @age = age
    @gender = gender
    @favorite_toys = []
  end

  def to_s
    "#{name} is a #{@type}, breed: #{@breed}"
  end


end