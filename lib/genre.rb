require "./lib/concerns/findable.rb"
class Genre
  extend
  attr_accessor :name, :songs  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def self.all
    @@all 
  end 
  
  def self.create(name)
    genre = Genre.new(name)
    genre.save
    genre
  end 
  
  def self.destroy_all
    @@all.clear
  end 
  
  def save
    @@all << self 
  end 
  
  def songs 
    @songs 
  end 
  
  def artists 
    self.songs.collect {|song| song.artist}.uniq
  end
end 