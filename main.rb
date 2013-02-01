require 'pry'
require 'rainbow'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

shelter = Shelter.new('happitails')
client = nil

def menu
  puts `clear`
  puts "Welcome to the Happitails Database\n\n".color(:blue)
  print 'Choose: (L)ists, (A)doption, (C)lient Management or (Q)uit. '
end
menu
stay = true
while stay
  response = gets.chomp.downcase
  case response
  when 'l'
    print 'Choose: (A)nimal List or (C)lient List.'
    reply = gets.chomp.downcase
    if reply == 'a'
      puts shelter.animals.to_s
      gets
      menu
    else reply == 'c'
      puts shelter.clients.to_s
      gets
      menu
    end
  when 'a'
  when 'c'
    print "Would you like to add a client? (Y)es (N)o "
    answer = gets.chomp.downcase
    if answer == 'y'
      print 'Name: '
      name = gets.chomp
      print 'Age: '
      age = gets.to_i
      print 'Gender: '
      gender = gets.chomp
      print 'Number of children: '
      num_kids = gets.to_i
      print 'Number of pets: '
      num_pets = gets.to_i
      client = Client.new(name, age, gender, num_kids, num_pets)
      shelter.clients[name]=client
      puts 'Client has been added! Press return to continue.'.color(:yellow)
      gets
      menu
    else
      menu
    end
  when 'q'
    puts 'Quit application.'.color(:red)
    stay = false
  end
end
