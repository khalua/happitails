require 'pry'
require 'rainbow'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

# puts `clear`
# puts "Welcome to the Happitails Database\n\n".color(:red)
# print 'Choose: (L)ists, (A)doption, or (Q)uit. '
# response = gets.chomp.downcase
# while response != 'q'
#   case response
#   when 'l'
#     print 'Choose: (A)nimal List or (C)lient List.'
#     reply = gets.chomp.downcase
#     if reply == 'a'
#       puts shelter.animals
#     else
#       puts
#     end
#  when 'a'

shelter = Shelter.new('happitails')
shelter.animals["Buddy"] = Animal.new("Buddy","Dog", "Lab", 12, "male")
shelter.animals["Joe"] = Animal.new("Joe","Cat", "Tabby", 2, "female")


    puts "You are in the Adoption Menu."
    print "Animal (i)n, (o)ut, (l)ist, or(q)uit "
    adopt_choice = gets.chomp.downcase
    while adopt_choice != 'q'
      case adopt_choice
      when 'i'
        print "Name: "
        name = gets.chomp.capitalize
        print "Dog or Cat: "
        species = gets.chomp.capitalize
        print "Breed: "
        breed = gets.chomp.capitalize
        print "Age: "
        age = gets.to_i
        print "Gender (m/f): "
        gender = gets.chomp.downcase
        shelter.animals[name] = Animal.new(name, species, breed, age, gender)
      when 'o'
        puts "These are the animals that up for adoption: "
        puts shelter.animals.keys
        print "What's the name of the animal being adopted? "
        animal_name_out = gets.chomp
        print "What's the name of the new owner? "
        new_owner = gets.chomp.capitalize
        shelter.animals[animal_name_out].add_owner(new_owner)
      when 'l'
        ""
        puts shelter.animals
      end

      print "Animal (i)n, (o)ut, (l)ist or (q)uit "
      adopt_choice = gets.chomp.downcase
     end

binding.pry
