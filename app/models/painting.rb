class Painting

  attr_accessor :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  # Painting.all
def self.all
  @@all
end

# Returns an array of all the paintings
# Painting.total_price
# Returns an integer that is the total price of all paintings
def self.total_price
self.all
end

end
