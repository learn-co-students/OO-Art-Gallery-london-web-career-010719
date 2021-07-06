require_relative '../config/environment.rb'

ken = Artist.new("ken", 6)
sara = Artist.new("sara", 12)
tim = Artist.new("tim", 15)

more_arts = Gallery.new("More Arts", "New York")
lots_of_arts = Gallery.new("Lots of Arts", "New York")
bad_art = Gallery.new("Bad Art", "LA")

ken.new_painting("poop", 20, lots_of_arts)
sara.new_painting("Slippers", 23, more_arts)
tim.new_painting("The Russians", 24, bad_art)
tim.new_painting("Germany", 12, more_arts)



binding.pry

puts "Bob Ross rules."
