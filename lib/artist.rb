require 'song.rb'
require 'genre.rb'

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end #initialize

  def self.all
    @@all
  end #self.all

  def new_song(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
  end #new_song

  def songs
    Song.all.select {|song| song.artist = self}
  end #songs

  def genres
    songs.collect {|song| song.genre}
  end #genres

end #Artist
