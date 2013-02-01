class Client
  attr_accessor :name, :age, :gender, :kids, :num_pets
  def initialize (name, age, gender, kids, num_pets)
    @name = name
    @age = age
    @gender = gender
    @kids = kids
    @num_pets = num_pets
  end

  def add_animal(num)
    @num_pets + @num_pets + 1
  end

  def to_s
    puts "#{name.capitalize} is a #{age} year-old #{gender} who has #{kids} child(ren) and #{num_pets} animal(s)."
  end
end
