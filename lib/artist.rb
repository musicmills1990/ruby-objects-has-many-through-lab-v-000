class Artist

@@all = []

attr_accessor :name

def initialize(name)
  @name = name
  @@all << self
  @songs = []
end

def self.all
  @@all
end


def new_song(name, genre)
  song = Song.new(name, self, genre)
  song
end

def songs
  Song.all
end

def add_song(song)
  @songs << song
end

def genres
  self.songs.map{|song| song.genre}
end

end
