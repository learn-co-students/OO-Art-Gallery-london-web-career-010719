class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self

    end

    def self.all
        @@all
    end


    def self.total_price
        price = @@all.map do | painting|
            painting.price
        end

        price.inject {|total, n| total + n}.to_i
    end


end
