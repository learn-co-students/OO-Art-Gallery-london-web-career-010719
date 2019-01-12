require_relative '../config/environment.rb'

a1 = Artist.new("chrisc", 1)
a2 = Artist.new("gisela", 12)
a3 = Artist.new("jeff", 0)

g1 = Gallery.new("Luvre", "Paris")
g2 = Gallery.new("Tate", "London")

a1.create_paintig("my latest work", 3.5, g1)
a1.create_paintig("new new", 2343, g2)
a2.create_paintig("chris nude :o", 324234, g2)


binding.pry

puts "Bob Ross rules."
