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
  def self.find_or_create_by_name(artist_name)
    artist_instance = self.all.detect{|artist| artist.name == artist_name}
    #finds artist instance that matches name
    if artist_instance != nil
      artist_instance
    else
      Artist.new(artist_name)
    #creates new instance if one doesn't exist
    #return instance of artist with attr #{name}
    end
  end
end
