class Album
  include Enumerable
  attr_reader :songs

  def initialize
    @songs = []
  end

  def add_song(song)
    songs << song
  end

  def each
    songs.each { |song| yield song }
  end
end

thriller = Album.new
thriller.add_song("Thriller")
thriller.add_song("Billy Jean")
puts thriller.songs
