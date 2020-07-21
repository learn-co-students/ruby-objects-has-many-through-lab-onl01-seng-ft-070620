require 'song.rb'
require 'genre.rb'
require 'pry'

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

  def new_song(song_name, genre)
    new_song = Song.new(song_name, self, genre)
  end #new_song

  def songs
    Song.all.select {|song| song.artist == self}
    # binding.pry
  end #songs

  def genres
    songs.collect {|song| song.genre}
  end #genres

end #Artist
