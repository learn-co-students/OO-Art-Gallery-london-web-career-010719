require 'pry'

class Artist

  attr_accessor :name, :years_experience

@@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

# Returns an array of all the artists
def self.all
  @@all
end

# Returns an array all the paintings by an artist
# Artist #paintings
def paintings
Painting.all.select { |x| x.artist == self }
end
#
# Returns an array of all the galleries that an artist has paintings in
# Artist #galleries
def galleries
paintings.map {|painting| painting.gallery}.uniq
end
#
#Return an array of all cities that an artist has paintings in
# Artist#cities
def cities
galleries.map {|gallery| gallery.city}.uniq
end

#
# Returns an integer that is the total years of experience of all artists
# Artist.total_experience
def self.total_experience
  self.all.inject(0){|sum, artist| sum += artist.years_experience}
end
#
#Returns an instance of the artist with the highest amount of paintings per year of experience.
# Artist.most_prolific
def self.most_prolific
@@all.max_by {|artist| artist.paintings.length / artist.years_experience}
end
#
#
# Artist#create_painting
# Given the arguments of title, price and gallery, creates a new painting belonging to that artist
def create_painting(title, price, gallery)
  Painting.new(title, price, self, gallery)
end
#
# Given the arguments of title, price and gallery, creates a new painting belonging to that artist

end
