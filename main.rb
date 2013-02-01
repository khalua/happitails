require 'pry'
require 'rainbow'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

shelter = Shelter.new('happitails')
client = nil

def menu
  puts `clear`
  puts "Welcome to the Happitails Database\n\n".color(:red)
  print 'Choose: (L)ists, (A)doption, (C)lient Management or (Q)uit. '
end
response = menu
response = gets.chomp.downcase
stay = true
while stay
  case response
  when 'l'
    print 'Choose: (A)nimal List or (C)lient List.'
    reply = gets.chomp.downcase
    if reply == 'a'
      puts shelter.animals
    else reply == 'c'
      puts shelter.clients
    end
  when 'a'
  when 'c'
    print "Would you like to add a client? (Y)es (N)o "
    answer = gets.chomp.downcase
    if answer == 'y'
      print 'Name: '
      name = gets.chomp
      print 'Age: '
      age = gets.chomp
      print 'Gender: '
      gender = gets.chomp
      print 'Number of children: '
      num_kids = gets.to_i
      print 'Number of pets: '
      num_pets = gets.to_i
      client = Client.new(name, age, gender, num_kids, num_pets)
      shelter.clients[name]=client
    else

    end
  when 'q'
    stay = false
  end
end
