class Genre 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def songs
    Song.all.find do |genre|
      Song.genre = self 
    end
  end
  
  def artists 
    
end
  