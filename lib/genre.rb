class Genre 
  attr_accessor :name, :song, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  
  def songs
    Song.all.select do |genre|
      song.genre == self 
    end
  end
  
  def artists 
    songs.collect {|song| song.artist}
  end
end
  