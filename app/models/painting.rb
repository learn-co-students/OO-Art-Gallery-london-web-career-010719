class Painting
  attr_accessor :gallery, :artist
  attr_reader :title, :price

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price

    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    all.inject(0) {|sum, painting| sum + painting.price}
  end

end
