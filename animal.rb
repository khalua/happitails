class Animal
  attr_accessor :name, :owner, :type, :breed, :age, :gender, :favorite_toys
  def initialize(name, owner, type, breed, age, gender, favorite_toys)
    @name = name
    @owner = nil
    @type = type
    @breed = breed
    @age = age
    @gender = gender
    @favorite_toys = []
  end

  def is_adopted?
    @owner.nil?
  end

  def to_s
    "#{name} is a #{@type}, breed: #{@breed}"
  end


end