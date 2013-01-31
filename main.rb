require 'pry'
require 'rainbow'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'


shelter = Shelter.new

puts `clear`
puts "Welcome to the Happitails Database\n\n".color(:red)
print 'Choose: (L)ists, (A)doption, or (Q)uit. '
response = gets.chomp.downcase
while response != 'q'
  case response
  when 'l'
  when 'a'
    while adopt_choice != 'q'
    puts "You are in the Adoption Menu."
    print "Animal (i)n, (o)ut or (q)uit "
    case adopt_choice
    when 'i'
      print "Name: "
      name = gets.chomp.capitalize
      print "Type (Dog/Cat): "
      type = gets.chomp.downcase
      print = "Breed: "
      breed = gets.chomp
      print "Age: "
      age = gets.to_i
      print "Gender (m/f): "
      gender = gets.chomp.downcase
      Animal.new(name, type, breed, age, gender)
    when 'o'
      puts "These are the animals that up for adoption: "
      shelter.animals.name


    end


    puts "You are in the Adoption Menu."
    print "Animal (i)n, (o)ut or (q)uit "
  end
  end
end
