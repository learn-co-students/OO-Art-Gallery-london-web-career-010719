require_relative '../config/environment.rb'

van_gogh = Artist.new("Van Gogh",100)
tate = Gallery.new("Tate","London")
saatchi = Gallery.new("Saatchi","London")
starry_night = Painting.new("Starry Night",1000,van_gogh,tate)
waterfall = Painting.new("water",3000,van_gogh,saatchi)


miro = Artist.new("Miro",60)
farm = Painting.new("The Farm",1500,miro,tate)
jam = Painting.new("The Jar",1600,miro,saatchi)


binding.pry

puts "Bob Ross rules."
