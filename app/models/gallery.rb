class Gallery

  attr_reader :name, :city
  @@all = []

      def initialize(name, city)
        @name = name
        @city = city
        @@all << self
      end

      def self.all
        @@all
      end

      def paintings
        Painting.all.select {|painting| painting.gallery == self}
      end

      def artists
          paintings.map do |painting|
                painting.artist
          end
      end

      def artist_name
        artists.map do |artist|
            artist.name
        end

      end

      def most_expensive_painting

          price = paintings.map {|painting| painting.price }
          price.max_by {|price| price}
      end




end
