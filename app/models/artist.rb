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
          Painting.all.select {|painting| painting.artist == self }
      end


      def galleries
        paintings.map do | painting|
            painting.gallery
        end
      end

      def cities
        galleries.map do |gallery|
            gallery.city
        end
      end

      def self.experience
           @@all.map {|artist| artist.years_experience }
      end

      def self.total_experience
        # experience = @@all.map {|artist| artist.years_experience }
        experience.inject {|total, num| total + num }

      end

      def self.most_prolific

          @@all.max_by do |artist|

          artist.paintings.count.to_f/artist.years_experience.to_f

          end

      end

      def create_painting(title,price,gallery)
        Painting.new(title,price,self,gallery)
      end


end
