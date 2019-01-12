require_relative '../config/environment.rb'

g1 = Gallery.new("Tate", "London")

joey = Artist.new("Joey", 8)

p1 = Painting.new("Dog", 55, joey, g1)

p2 = joey.create_painting("sunflower", 35, g1)
p3 = joey.create_painting("potato", 88, g1)


puts "eof"
