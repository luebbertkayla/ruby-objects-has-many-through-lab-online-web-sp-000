class Patient
  attr_accessor :name, :song, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def artists 
    songs.collect {|song| song.artist}
  end
end