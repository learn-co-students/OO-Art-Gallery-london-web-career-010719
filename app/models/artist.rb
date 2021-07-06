class Artist

@@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def new_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

def name
  @name
end

  def galleries
    paintings.map do |painting|
      painting.gallery
        #painting.galler
    end
  end

  def self.all
    @@all
  end

  def self.total_experience
    counter = 0
    all.each do |artist|
      counter = counter + artist.years_experience
    end
    counter
  end

  #showing full object instead of just names of galleries

#asks Painting for a list of paintings by self
#Asks each Painting for its gallery
#asks the Gallery for its city
#returns cities in an array
  def cities
    galleries.map do |gallery|
      gallery.city
    end
      #undefined method `city' for "New York":String
  end


#looks into self to find years_experience
#fines the max years
#returns the full instance
  def self.most_prolific
    all.max do |artist|
      artist.years_experience
    end

  end

end
