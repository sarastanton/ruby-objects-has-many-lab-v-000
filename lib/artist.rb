class Artist
  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    name = Song.new(name)
    name.artist = self
    @songs << name
    @@song_count += 1
    #return new song name at end of this method
  end


  def self.song_count
    @@song_count
  end

end
