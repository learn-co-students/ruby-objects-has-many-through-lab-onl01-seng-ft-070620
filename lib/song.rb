require 'artist.rb'
require 'genre.rb'

class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@all << self
  end #initialize

  def self.all
    @@all
  end #self.all

end #Song
