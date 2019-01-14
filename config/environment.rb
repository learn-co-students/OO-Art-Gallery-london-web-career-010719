require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'


  # creating intance of artist
panchal = Artist.new("Panchal", 2)
daVinci = Artist.new("Da Vinci", 80)
mone = Artist.new("Mone", 56)

  # create instance of gallery
tate = Gallery.new("Tate", "London")
louvre = Gallery.new("Louvre", "Paris")

  # create instance of painting
flatiron_painting = Painting.new("flatiron_painting", 221, panchal, tate)
flatiron = Painting.new("First one man!", 221, panchal, louvre)
ruby_painting = Painting.new("ruby painting", 423, daVinci, louvre)
mone_genius = Painting.new("Mone's Genius", 32, mone, louvre)


binding.pry
