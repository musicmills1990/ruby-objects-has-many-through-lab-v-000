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


def add_song(song)
  @songs << song
end

def new_song(name, genre)
  song = Song.new(name, self, genre)
  add_song(song)
  song
end

def songs
  Song.all
end


def genres
genre_array = Song.all.map{|song| song.genre}
genre_array
end

end
