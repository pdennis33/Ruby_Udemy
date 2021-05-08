# An Album class that stores an array of songs
class Album
  include Enumerable

  # An array object of songs. Each song is a String
  attr_reader :songs

  # Creates a new Album instance with an empty songs array
  def initialize
    @songs = []
  end

  # Adds a song to the object's songs array
  def add_song(song)
    songs << song
  end

  # Yield each in song in the Album to the block
  def each
    songs.each { |song| yield song }
  end
end

thriller = Album.new
thriller.add_song("Thriller")
thriller.add_song("Billy Jean")
puts thriller.songs
