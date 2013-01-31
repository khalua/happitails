require 'pry'
require 'rainbow'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

shelter = Shelter.new('happitails')

puts `clear`
puts "Welcome to the Happitails Database\n\n".color(:red)
print 'Choose: (L)ists, (A)doption, or (Q)uit. '
response = gets.chomp.downcase
while response != 'q'
  case response
  when 'l'
    print 'Choose: (A)nimal List or (C)lient List.'
    reply = gets.chomp.downcase
    if reply == 'a'
      puts shelter.animals
    else
      puts
    end
  when 'a'
  end
end
