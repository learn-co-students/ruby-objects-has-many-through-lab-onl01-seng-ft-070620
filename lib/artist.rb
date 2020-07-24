class Artist
    attr_accessor :name, :song
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        save
    end

    def save
        @@all << self
      end

    def self.all
        @@all
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        self.songs.last
    end
    
    def genres
        Song.all.map do |song|
            song.genre
        end
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

end
