require "./lib/concerns/findable.rb"
class Song 
  extend Concerns::Findable
  attr_accessor :name, :artist, :genre
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name 
    self.genre=(genre) unless genre == nil
    self.artist=(artist) unless artist == nil
  end 
  
  def artist=(artist)
    @artist = artist 
    artist.add_song(self)
  end 
  
  def genre=(genre)
    @genre = genre 
    genre.songs << self unless genre.songs.include?(self)
  end 
  
  def self.all
    @@all 
  end 
  
  def self.create(name)
    song = Song.new(name)
    song.save
    song
  end 
  
  def self.destroy_all
    @@all.clear
  end 
  
  def save
    @@all << self 
  end 
  
  def self.new_from_filename(filename)
    artist, song, genre = filename.split(" - ")
    
  end 
end 









