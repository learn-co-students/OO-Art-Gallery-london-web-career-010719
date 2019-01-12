require 'pry'
class Artist
  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    self.class.all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.collect {|painting| painting.gallery}.uniq
  end

  def cities
    galleries.collect {|gallery| gallery.city}.uniq
  end

  def create_paintig(title, price, gallery)
    my_new_painting = Painting.new(title, price)
    my_new_painting.artist = self
    my_new_painting.gallery = gallery
  end

  def self.total_experience
    self.all.inject(0) {|sum, artist| sum + artist.years_experience }
  end

  def self.most_prolific
    all.max_by do |artist|
      if artist.years_experience == 0
        0
      else
        artist.paintings.length.to_f / artist.years_experience.to_f
      end
    end
  end
end
