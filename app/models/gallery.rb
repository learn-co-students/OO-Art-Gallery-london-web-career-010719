class Gallery

@@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def new_painting(title, price, artist)
    Painting.new(title, price, self, artist)
  end

  def self.all
    @@all
  end

#returns an array of all paintings in a gallery
  def paintings
    Painting.all.select do |painting|
      if painting.gallery == self
        painting.gallery
      end
    end
  end

#asks for a list of all the artists with paintings in self
#Ask Painting for paintings from self gallery
#ask each painting its artist
  def artists
    paintings.map do |painting|
      painting.artist
    end
  end


#Ask Painting for paintings from self gallery
#ask each painting for the name if its artist
  def artist_names
    artists.map do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    paintings.max_by { |painting|
     painting.price
   }

  end
end
