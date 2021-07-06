class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []
  #do I need a price array?

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end


  def self.all
    @@all
  end


def self.total_price
  sum = 0
  all.each do |painting|
    sum = sum + painting.price
  end
  sum
end

  def self.avg_price
    sum = 0
    all.each do |painting|
      sum = sum + painting.price
    end
    sum / all.length
  end

end
