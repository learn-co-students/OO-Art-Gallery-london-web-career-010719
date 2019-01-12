class Artist

  attr_accessor :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @paintings = []
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}.uniq
  end

  def cities
    galleries.map {|gallery| gallery.city}.uniq
  end

  def self.total_experience
    @@all.inject(0) {|exp_sum,artist| exp_sum + artist.years_experience}
  end

  def self.most_prolific
    max_artist = @@all[0]
    prolific = 0
    @@all.each do |artist|
      if (artist.paintings.count / artist.years_experience) > prolific
        max_artist = artist
        prolific = artist.paintings.count / artist.years_experience
      end
    end
    max_artist
  end

  def create_painting(title, price, gallery)
    new_painting = Painting.new(title,price)
    new_painting.artist = self
    new_painting.gallery = gallery
  end

end
