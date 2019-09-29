class MusicImporter
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end 
  
  def files 
    Dir("#{path}/*").map {|file| file}
  end 
end 