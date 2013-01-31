require 'pry'
require 'rainbow'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

puts `clear`
puts "Welcome to the Happitails Database\n\n".color(:red)
print 'Choose: (L)ists, (A)doption, or (Q)uit. '
response = gets.chomp.downcase
while response != 'q'
  case response
  when 'l'
  when 'a'
  end
end
