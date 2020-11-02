class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def add_song(song)
    song.artist = self
  end
  def songs
    Song.all.select {|song| song.artist == self}
  end
  def self.find_or_create_by_name(name)
    #finds artist instance that matches name
    #or
    #creates new instance if one doesn't exist
    #return instance of artist with attr #{name}
  end
end
