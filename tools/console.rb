require_relative '../config/environment.rb'
require 'pry'

 home = Gallery.new("home","Dubai")
maeght = Gallery.new("Foundation Maeght","Cannes")
moma = Gallery.new("MOMA","New York City")

 chagall = Artist.new("chagall",5)
lorenz = Artist.new("lorenz",2)
picasso = Artist.new("picasso",60)

p1 = Painting.new("art 1", 200, picasso, moma)
p2 = Painting.new("art 2",400, chagall, maeght)
p3 = Painting.new("art 3", 600, chagall, moma)

# Song.create_painting("fish",3000,home)
# Song.create_painting("bunny",5000,home)
# Lorenz.create_painting("918",2,home)
# Lorenz.create_painting("mini",5,street)
# Picasso.create_painting("dreamer",20000,moma)

binding.pry

puts "Bob Ross rules."
