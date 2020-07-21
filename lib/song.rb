## Song is the central class that Artist and 
## Genre go through 

class Song

    attr_accessor :name, :artist, :genre 
    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre 
        @@all << self 
    end 

    def self.all
        @@all 
    end 


end  