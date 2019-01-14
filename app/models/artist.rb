require_relative '../models/painting.rb'
require_relative '../models/gallery.rb'

class Artist

  attr_reader :name, :years_experience, :experience

  @@all = []
  @@total_experience = 0


  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
    @@total_experience += years_experience
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map{|painting| painting.gallery}
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    @@total_experience
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


  #class end
end
