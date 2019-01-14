class Gallery

  attr_accessor :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  # Returns an array of all the galleries
#   Gallery.all
def self.all
  @@all
end

# Returns an array of all paintings in a gallery
# Gallery#paintings
def paintings
Painting.all.select{|x|x.gallery == self}
end
#
# Returns an array of all artists that have a painting in a gallery
# Gallery#artists
def artists
  artist = []
Painting.all do |x|
  if x.gallery == self
artist << x.artist
end
end
artist
end

# Returns an array of the names of all artists that have a painting in a gallery
# Gallery#artist_names
def artist_names
paintings.map{ |y|  y.artist }
end
#
# Gallery#most_expensive_painting#
#Returns an instance of the most expensive painting in a gallery
def most_expensive_painting
paintings.max_by{|x|x.price}
end
# #


end
