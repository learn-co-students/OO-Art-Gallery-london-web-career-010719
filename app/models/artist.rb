
class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    paintings.collect {|painting_instance| painting_instance.gallery}.uniq
  end

  def cities
    galleries.map {|gallery_instance| gallery_instance.city}.uniq
  end

  def self.total_experience
    total_experience = 0
    @@all.each do |artist_instance|
      total_experience += artist_instance.years_experience
    end
    total_experience
  end

  def self.most_prolific
    @@all.sort_by do |artist_instance|
      artist_instance.paintings.count / artist_instance.years_experience
    end[0]
  end

  def create_painting(title, price, gallery)
    painting = Painting.new(title, price, gallery)
    painting.artist = self
    painting
  end
end
