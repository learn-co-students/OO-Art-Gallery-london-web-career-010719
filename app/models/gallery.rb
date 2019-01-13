class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    paintings.collect{|painting| painting.artist}.uniq
  end

  def artist_names
    artists.collect{|artist| artist.name}.uniq
  end

  def most_expensive_painting
    paintings.sort_by{|painting| painting.price}[-1]
  end

end
